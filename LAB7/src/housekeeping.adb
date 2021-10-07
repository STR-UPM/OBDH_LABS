------------------------------------------------------------------------------
--                                                                          --
--          Copyright (C) 2020  Universidad Politécnica de Madrid           --
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

with Housekeeping.Data;     use Housekeeping.Data;
with Housekeeping.Sensor;
with Storage;

with STM32.Board;

package body Housekeeping is

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      Sensor.Initialize;
   end Initialize;

   ----------------------------
   -- Housekeeping task body --
   ----------------------------

   task body Housekeeping_Task is
      OBC_T :Analog_Data;  -- OBC temperature
      Next_Time : Time := Clock + Start_Delay;
   begin
      loop
         delay until Next_Time;
         Sensor.Get (OBC_T);
         Storage.Put (OBC_T);
         -- toggle LED to show HK operation
         STM32.Board.Blue_LED.Toggle;
         Next_Time := Next_Time + Period;
      end loop;
   end Housekeeping_Task;

end Housekeeping;
