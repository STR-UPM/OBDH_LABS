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

with TTC;          use TTC;
with TTC.Messages; use TTC.Messages;

package body Manager.Operations is

   HK_Size : constant := 4;
   -- size of housekeeping logs

   ----------------
   -- Process_TC --
   ----------------

   procedure Process_TC (TC : TC_Type) is
   begin
      case TC is
         when Open_Link =>
            if Current_Mode /= Coverage then
               Set_Mode (To => Coverage);
               Send (TM_Mode(Coverage));
            end if;
         when Request_HK =>
            if Current_Mode = Coverage then
               Send (TM_Housekeeping(HK_Size));
            else
               Send (TM_Error ("NOT IN COVERAGE"));
            end if;
         when Close_Link =>
            if Current_Mode /= Idle then
               Set_Mode (To => Idle);
               Send (TM_Mode(Idle));
            end if;
         when Error =>
            Send (TM_Error("BAD TC"));
      end case;
   end Process_TC;

end Manager.Operations;
