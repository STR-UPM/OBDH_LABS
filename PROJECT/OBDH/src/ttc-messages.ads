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

-- Parsing and formatting functions for TTC messages

with TTC.Data;      use TTC.Data;
with Platform.Data; use Platform.Data;
with Manager;       use Manager;

package TTC.Messages is

   -- Parse TC message
   function TC (TC_Message : String) return TC_Type;

   -- Format TM messages
   function TM_Hello (S : State) return String;
   function TM_Mode (M : Operating_Mode) return String;
   function TM_Housekeeping (Length : Positive := 1) return String;
   function TM_Error (Message : String) return String;

end TTC.Messages;
