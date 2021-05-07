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

with Unchecked_Conversion;

package body Message_Four_Bytes is

   subtype Four_Bytes_String is String (1..4);
   
   function Four_Bytes_To_String is new
     Unchecked_Conversion (Four_Bytes, Four_Bytes_String);
   
   function To_String (To : Four_Bytes) return String is
   begin
      return String(Four_Bytes_To_String (To));
   end To_String;
   
   procedure Set (This : in out Message; To : Four_Bytes) is
      T_String : Four_Bytes_String;
   begin
      T_String := Four_Bytes_To_String(To);
      Set (This, T_String);
   end Set;
   
   procedure Unset (This : in Message; To : out Four_Bytes) is
      function String_To_Four_Bytes is new
        Unchecked_Conversion (Four_Bytes_String, Four_Bytes);
   begin
      To := String_To_Four_Bytes (This.Content (1 .. 4));
   end Unset;

end Message_Four_Bytes;
