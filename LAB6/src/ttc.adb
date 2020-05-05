
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

with Housekeeping_Data;     use Housekeeping_Data;
with Storage;

with Serial_IO.Blocking;    use Serial_IO.Blocking;
with Peripherals_Blocking ; use Peripherals_Blocking;
with Message_Buffers;       use Message_Buffers;

with STM32.Board;

with Housekeeping_Data.Images;            use Housekeeping_Data.Images;
with Ada.Characters.Latin_1; use Ada.Characters.Latin_1;

package body TTC is

   Outgoing : aliased Message (Physical_Size => 1024); -- arbitrary size

   -- Internal operations

   procedure Send (S : State);

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      Initialize (COM);
      Configure (COM, Baud_Rate => 115_200);
   end Initialize;

   -------------
   -- TM_Task --
   -------------

   task body TM_Task is
      S : State;
      Next_Time : Time := Clock + Start_Delay;
   begin
      loop
         delay until Next_Time;
         Storage.Get (S);
         Send (S);
         STM32.Board.Orange_LED.Toggle;
         Next_Time := Next_Time + Period;
      end loop;
   end TM_Task;

   ----------
   -- Send --
   ----------

   procedure Send (S : State) is
      Data : constant Analog_Data  := S.Data;
      TS   : constant Mission_Time := S.Timestamp;
   begin
      Set (Outgoing, Image(TS) & ":" & Image(Data) & CR & LF);
      Put (COM, Outgoing'Unchecked_Access);
   end Send;

end TTC;
