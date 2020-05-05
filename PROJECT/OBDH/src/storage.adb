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

package body Storage is


   ------------
   -- Buffer --
   ------------

   protected body Buffer is

      ---------
      -- Put --
      ---------

      procedure Put (Data : State) is
      begin
         Box (Next_In) := Data;
         Last_In := Next_In;
         Next_In := Next_In + 1;
         if Count < Capacity then
            Count   := Count + 1;
         else -- buffer full, overwrite oldest Sensor_Data
            Next_Out := Next_Out + 1;
         end if;
      end Put;

      ---------
      -- Get --
      ---------

      procedure Get (Data : out State) is
      begin
         if Empty then
            raise Constraint_Error;
         end if;
         Data := Box (Next_Out);
         Next_Out := Next_Out + 1;
         Count := Count - 1;
      end Get;

      ----------
      -- Last --
      ----------

      function Last return State is
      begin
         return Box (Last_In);
      end Last;

      -----------
      -- Empty --
      -----------

      function Empty return Boolean is
      begin
         return Count = 0;
      end Empty;

      ----------
      -- Full --
      ----------

      function Full return Boolean is
      begin
         return Count = Capacity;
      end Full;

   end Buffer;

end Storage;
