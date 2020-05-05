
------------------------------------------------------------------------------
--                                                                          --
--          Copyright (C) 2020 Universidad Politécnica de Madrid           --
--                                                                          --
-- This is free software;  you can redistribute it  and/or modify it  under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  This software is distributed in the hope  that it will be useful, --
-- but WITHOUT ANY WARRANTY;  without even the implied warranty of MERCHAN- --
-- TABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public --
-- License for  more details.  You should have  received  a copy of the GNU --
-- General  Public  License  distributed  with  this  software;   see  file --
-- COPYING3.  If not, go to http://www.gnu.org/licenses for a complete copy --
-- of the license.
--                                                                          --
------------------------------------------------------------------------------
-- Code for WCET measurements

with Housekeeping_Data, Housekeeping_Data.Images, Sensor, Storage;
use  Housekeeping_Data;
use  Housekeeping_Data.Images;

with Serial_IO.Blocking;    use Serial_IO.Blocking;
with Peripherals_Blocking ; use Peripherals_Blocking;
with Message_Buffers;       use Message_Buffers;

with STM32.Board;

with Ada.Characters.Latin_1; use Ada.Characters.Latin_1;

package body WCET_Meter_Task is

   ----------------
   -- Meter task --
   ----------------

   task Meter_Task with Priority => Storage.ST_Priority;
   -- This is a wrapper for application code. It is required in order
   -- to be able to call protected operations in the Storage subsystem

   -------------------------
   -- Internal procedures --
   -------------------------

   procedure Get (S : out State);
   -- read sensor value with timestamp

   procedure Send (S : State);
   -- send TM message

   procedure Put (Message : String);
   -- put message on serial line

   Outgoing : aliased Message (Physical_Size => 1024); -- arbitrary size
   -- buffer for TM messages

   Dummy    : aliased Message (Physical_Size => 1024); -- arbitrary size
   -- dummy buffer for measurements

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      Initialize (COM);
      Configure (COM, Baud_Rate => 115_200);
      Sensor.Initialize;
   end Initialize;

   ---------------------
   -- Meter task body --
   ---------------------

   task body Meter_Task is
      Test_No   : Positive := 1;
      Next_Time : Time := Clock + Start_Delay;
      -- next time the test is executed
   begin
      STM32.Board.Blue_LED.Set;
      loop
         delay until Next_Time;
         Put("Start test no " & Test_No'Img);

         -- housekeeping task code
         HK:
         declare
            -- job data
            Data      : State;
            T         : Time := Clock;
            Period    : constant Time_Span := Milliseconds (1000);
            -- test parameters
            T1, T2    : Time;
            C         : Time_Span;
         begin
            STM32.Board.Blue_LED.Set;
            T1 := Clock;
            for I in 1..N loop
               Get(Data);
               Storage.Put (Data);
               T := T + Period;
            end loop;
            T2 := Clock;
            C := T2 - T1;
            STM32.Board.Blue_LED.Clear;
            Put ("HK (" & N'Img & " times) : "
                 & Duration'Image(To_Duration(C)) & " s");
         end HK;

         -- TTC task code
         TC:
         declare
            -- job data
            S         : State;
            T         : Time := Clock;
            Period    : constant Time_Span := Milliseconds (1000);
            -- test parameters
            T1, T2    : Time;
            C         : Time_Span;
         begin
            STM32.Board.Orange_LED.Set;
            Set (Dummy, "");
            T1 := Clock;
            for I in 1..N loop
               Storage.Get_Immediate (S);
               Send (S);
               T := T + Period;
            end loop;
            T2 := Clock;
            C := T2 - T1;
            STM32.Board.Orange_LED.Clear;
            Put ("TC (" & N'Img & " times) : "
                 & Duration'Image(To_Duration(C)) & " s");
         end TC;

         -- ST PO code
         ST:
         declare
            -- job data
            S : State := State'(Data => 0, Timestamp => 0);
            -- test parameters
            T1, T2, T3 : Time;
            C1, C2     : Time_Span;
         begin
            STM32.Board.Blue_LED.Set;
            STM32.Board.Orange_LED.Set;
            T1 := Clock;
            for I in 1..N loop
               Storage.Put (S);
            end loop;
            T2 := Clock;
            for I in 1..N loop
               Storage.Get_Immediate (S);
            end loop;
            T3 := Clock;
            C1 := T2 - T1;
            C2 := T3 - T2;
            STM32.Board.Blue_LED.Clear;
            STM32.Board.Orange_LED.Clear;
            Put ("ST");
            Put ("Put (" & N'Img & " times) : "
                 & Duration'Image(To_Duration(C1)) & " s");
            Put ("Get (" & N'Img & " times) : "
                 & Duration'Image(To_Duration(C2)) & " s");
         end ST;

         Test_No := Test_No +1;
         Next_Time := Next_Time + Test_Period;
      end loop;

   end Meter_Task;

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

   ----------
   -- Send --
   ----------

   procedure Send (S : State) is
      Data : constant Analog_Data  := S.Data;
      TS   : constant Mission_Time := S.Timestamp;
   begin
      Set (Outgoing, Image(TS) & ":" & Image(Data) & CR & LF);
      Put (COM, Dummy'Unchecked_Access);
   end Send;

   ---------
   -- Put --
   ---------

   procedure Put (Message : String) is
   begin
      Set (Outgoing, Message & CR & LF);
      Put (COM, Outgoing'Unchecked_Access);
   end Put;

end WCET_Meter_Task;
