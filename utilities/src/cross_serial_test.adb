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
