
with Housekeeping_Data, Sensor, Storage;
use  Housekeeping_Data;

with Serial_IO.Blocking;    use Serial_IO.Blocking;
with Peripherals_Blocking ; use Peripherals_Blocking;
with Message_Buffers;       use Message_Buffers;

with STM32.Board;

with Ada.Real_Time;          use Ada.Real_Time;
with Ada.Characters.Latin_1; use Ada.Characters.Latin_1;


package body WCET_Code is

   -------------------------
   -- Internal procedures --
   -------------------------

   procedure Get (S : out State);
   -- read sensor value with timestamp

   procedure Put (Message : String);
   -- put message on serial line

   Outgoing : aliased Message (Physical_Size => 1024); -- arbitrary size

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      STM32.Board.Initialize_LEDs;
      Initialize (COM);
      Configure (COM, Baud_Rate => 115_200);
      Sensor.Initialize;
   end Initialize;

   -----------
   -- Meter --
   -----------

   procedure Meter is
      T, T1, T2 : Time;
      C : Time_Span;
      N : constant := 1_000_000;
      Data   : State;
      Period : constant Time_Span := Milliseconds(1000);
      Round  : Integer := 1;
   begin
      loop
         Put("Start measurement round no " & Round'Img);
         -- computation time of housekeeping task
         STM32.Board.Blue_LED.Set;
         T  := Clock;
         T1 := Clock;
         for I in 1..N loop
            Get(Data);
            --           Storage.Put (Data);
            T := T + Period;
         end loop;
         T2 := Clock;
         C  := T2 - T1;
         STM32.Board.Blue_LED.Clear;
         Put ("HK (" & N'Img & " times) : "
              & Duration'Image(To_Duration(C)) & " s");

         -- repeat the measurements after 30 s
         Round := Round + 1;
         delay until Clock + To_Time_Span(30.0);
      end loop;
   end Meter;

   ---------
   -- Get --
   ---------

   procedure Get (S : out State) is
      OBC_T : Analog_Data;
      SC    : Seconds_Count;
      TS    : Time_Span;
   begin
      Sensor.Get (OBC_T);
      Split (Clock, SC, TS);
      S.Data := OBC_T;
      S.Timestamp := Mission_Time (SC);
   end Get;

   ---------
   -- Put --
   ---------

   procedure Put (Message : String) is
   begin
      Set (Outgoing, Message & CR & LF);
      Put (COM, Outgoing'Unchecked_Access);
   end Put;

end WCET_Code;
