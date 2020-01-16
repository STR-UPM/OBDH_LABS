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

package body Storage is


   ------------
   -- Buffer --
   ------------

   protected body Buffer is

      ---------
      -- Put --
      ---------

      procedure Put (Data : Analog_Data) is
      begin
         Value := Data;
         fresh := True;
      end Put;

      ---------
      -- Get --
      ---------

      entry Get (Data : out Analog_Data) when Fresh is
      begin
         Data := Value;
         Fresh := False;
      end Get;

   end Buffer;

end Storage;
