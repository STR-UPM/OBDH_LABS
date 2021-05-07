------------------------------------------------------------------------------
--                                                                          --
--       Copyright (C) 2017-2019, Universidad Politécnica de Madrid         --
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
-- of the license.                                                          --
--                                                                          --
------------------------------------------------------------------------------
with Message_Buffers;       use Message_Buffers;

generic
   type Four_Bytes is private;
package Message_Four_Bytes is

   function To_String (To : Four_Bytes) return String;
   
   procedure Set (This : in out Message; To : Four_Bytes) with
     Pre  => 4 <= This.Physical_Size,
     Post => Length (This) = 4 and Content (This) = To_String (To),
     Inline;
   
   procedure Unset (This : in Message; To : out Four_Bytes) with
     Pre  => 4 <= This.Physical_Size,
     Post => Length (This) = 4 and Content (This) = To_String (To),
     Inline;

end Message_Four_Bytes;
