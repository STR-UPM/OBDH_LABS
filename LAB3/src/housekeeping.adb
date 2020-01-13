------------------------------------------------------------------------------
--                                                                          --
--          Copyright (C) 2018, Universidad Politécnica de Madrid           --
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
with Housekeeping.Sensor;   use Housekeeping.Sensor;
with Housekeeping.Display;  use Housekeeping.Display;

with STM32.Board;

package body Housekeeping is

   procedure Run;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      STM32.Board.Initialize_LEDs;
      Sensor.Initialize;
      Run;
   end Initialize;

   ---------
   -- Run --
   ---------

   procedure Run is
      OBC_T :Analog_Data;  -- OBC temperature
   begin
      loop
         STM32.Board.Green_LED.Toggle;
         Get (OBC_T);
         Put (OBC_T);
      end loop;
   end Run;

end Housekeeping;
