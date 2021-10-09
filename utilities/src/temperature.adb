------------------------------------------------------------------------------
--                                                                          --
--          Copyright (C) 2021 Universidad Politécnica de Madrid           --
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
-- convert raw temperature sensor readings to degrees Celsius

with HK_Data;             use HK_Data;
with HK_Data.Converter;   use HK_Data.Converter;
with TTC_Data.Strings;    use TTC_Data.Strings;

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Temperature is
   Raw_Value : Integer;
begin
   Put_line("Convert raw values from a temperature sensor to Celsius");
   Put_Line("Enter an integer value, or 0 to exit");
   loop
      Put("> ");
      Get(Raw_Value);
      exit when Raw_Value <= 0;
      Put_Line(Image(Temperature(Sensor_Reading(Raw_Value))));
   end loop;
end Temperature;
