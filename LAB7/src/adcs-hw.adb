------------------------------------------------------------------------------
--                                                                          --
--          Copyright (C) 2020 Universidad Politécnica de Madrid            --
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

-- ADCS subsystem
with Serial_IO.Blocking;    use Serial_IO.Blocking;
with Peripherals_Blocking ; use Peripherals_Blocking;
with Message_Buffers;       use Message_Buffers;

with Message_Four_Bytes;
with Interfaces;
-- with STM32.Board;

-- with Ada.Real_Time;      use Ada.Real_Time;

package body ADCS.HW is

   package MF is new Message_Four_Bytes (Four_Bytes => Interfaces.IEEE_Float_32);

   procedure Initialize is
   begin
      null;
   end Initialize;

   function Get return MGM_Readings is
      Ingoing : aliased Message (Physical_Size => 4);
      Data : MGM_Readings;
   begin
      for i in MGM_Readings'Range loop
         Get_Fixed (COM, Ingoing'Unchecked_Access);
         MF.Unset (Ingoing, Data (i));
      end loop;
      return Data;
   end Get;

   procedure Put (Output : ADCS_Vector) is
      Outgoing : aliased Message (Physical_Size => 4);
   begin
      for i in ADCS_Vector'Range loop
         -- N := (i-1)*4 +1;
         MF.Set (Outgoing, Output (i));
         Put (COM, Outgoing'Unchecked_Access);
      end loop;
   end Put;

begin
   Initialize (COM);
   Configure (COM, Baud_Rate => 115_200);
end ADCS.HW;
