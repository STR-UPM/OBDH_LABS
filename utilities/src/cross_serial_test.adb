with Serial_IO.Blocking;    use Serial_IO.Blocking;
with Peripherals_Blocking ; use Peripherals_Blocking;
with Message_Buffers;       use Message_Buffers;

with STM32.Board;

with Message_Four_Bytes;

procedure cross_serial_test is

   package MF is new Message_Four_Bytes (Four_Bytes => Float);
   package MI is new Message_Four_Bytes (Four_Bytes => Integer);

   Data : aliased Message (Physical_Size => 4);
   F: Float := 1.0;
   I: Integer := 1;

begin
   STM32.Board.Initialize_LEDs;
   Initialize (COM);
   Configure (COM, Baud_Rate => 115_200);
   loop
      Get_Fixed (COM, Data'Unchecked_Access);
      MF.Unset (Data, F);
      Get_Fixed (COM, Data'Unchecked_Access);
      MI.Unset (Data, I);
      MF.Set (Data, F);
      Put (COM, Data'Unchecked_Access);
      MI.Set (Data, I);
      Put (COM, Data'Unchecked_Access);
      STM32.Board.Red_LED.Toggle;
   end loop;
end cross_serial_test;
