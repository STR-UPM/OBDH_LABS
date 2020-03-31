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

-- Image strings for data

with Ada.Strings;       use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

package body Housekeeping_Data.Images is

   -----------
   -- Image --
   -----------

   function Image (X : Analog_Data) return String is
      S : String (1..4);
   begin
      Move(Trim(X'Img, Both), S, Justify => Right, Pad => '0');
      return S;
   end Image;


   function Image (X : Mission_Time) return String is
      S : String (1..10);
   begin
      Move(Trim(X'Img, Both), S, Justify => Right, Pad => '0');
      return S;
   end Image;

end Housekeeping_Data.Images;
