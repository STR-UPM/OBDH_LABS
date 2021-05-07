with GNAT.Serial_Communications;
with Ada.Streams;
with Ada.Unchecked_Conversion;
with Ada.Text_IO;
with Interfaces;

procedure Native_Serial_Test is

   use type Ada.Streams.Stream_Element_Offset;

   package Integer_IO is new Ada.Text_IO.Integer_IO(Integer);
   package Float_IO is new Ada.Text_IO.Float_IO(Float);

   function To_Float is new Ada.Unchecked_Conversion
     (Ada.Streams.Stream_Element_Array, Float);

   function To_Integer is new Ada.Unchecked_Conversion
     (Ada.Streams.Stream_Element_Array, Integer);

   subtype Four_Stream_Element_Array is Ada.Streams.Stream_Element_Array (1..4);

   function To_Four_Stream_Element_Array is new Ada.Unchecked_Conversion
     (Float, Four_Stream_Element_Array);

   function To_Four_Stream_Element_Array is new Ada.Unchecked_Conversion
     (Integer, Four_Stream_Element_Array);

   Data : Four_Stream_Element_Array;
   Data_Length, Data_Index :  Ada.Streams.Stream_Element_Offset;

   Uart_1 : GNAT.Serial_Communications.Serial_Port;
   F : Float := 1.0;
   I : Integer := 1;
begin

   GNAT.Serial_Communications.Open (Uart_1, "/dev/ttyUSB0");
   GNAT.Serial_Communications.Set (Port => Uart_1,
                                   Rate => GNAT.Serial_Communications.B115200,
                                   Block => True,
                                   Flow => GNAT.Serial_Communications.None);
   loop
      Data := To_Four_Stream_Element_Array (F);
      GNAT.Serial_Communications.Write (Uart_1, Data);
      Data := To_Four_Stream_Element_Array (I);
      GNAT.Serial_Communications.Write (Uart_1, Data);

      Data_Index := Data'First;
      while Data_Index < Data'Last loop
          GNAT.Serial_Communications.Read (Uart_1,
                Data (Data_Index .. Data'Last),
                Data_Length);
          Data_Index := Data_Length + 1;
      end loop;
      F:= To_Float (Data);
      Float_IO.Put (F);
      Ada.Text_IO.New_Line;

      Data_Index := Data'First;
      while Data_Index < Data'Last loop
          GNAT.Serial_Communications.Read (Uart_1,
                Data (Data_Index .. Data'Last),
                Data_Length);
          Data_Index := Data_Length + 1;
      end loop;
      I:= To_Integer (Data);
      Integer_IO.Put (I);
      Ada.Text_IO.New_Line;

      F := F + 1.0;
      I := I + 1;
      delay 1.0;
   end loop;
end Native_Serial_Test;
