
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

with Housekeeping.Data;     use Housekeeping.Data;
with Storage;

with Serial_IO.Blocking;    use Serial_IO.Blocking;
with Peripherals_Blocking ; use Peripherals_Blocking;
with Message_Buffers;       use Message_Buffers;

with STM32.Board;

with Ada.Characters.Latin_1; use Ada.Characters.Latin_1;

package body TTC is

   Outgoing : aliased Message (Physical_Size => 1024); -- arbitrary size

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
      T : Analog_Data;
   begin
      loop
         Storage.Get (T);
         Set (Outgoing, T'Img & CR & LF);
         Put (COM, Outgoing'Unchecked_Access);
         -- toggle LED to show TM operation
         STM32.Board.Orange_LED.Toggle;
      end loop;
   end TM_Task;

end TTC;
