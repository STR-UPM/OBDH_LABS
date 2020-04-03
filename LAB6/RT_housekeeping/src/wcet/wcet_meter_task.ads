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
-- Code for WCET measurements

with Ada.Real_Time; use Ada.Real_Time;

package WCET_Meter_Task is

   procedure Initialize;
   -- initialize devices

private

   Start_Delay : Time_Span := To_Time_Span (1.0);
   -- delay for devices to initialize

   N : constant := 1_000_000;
   -- number of times the code is exercised

   Test_Period : constant Time_Span := To_Time_Span(60.0);
   -- the test is repeated with this period

end WCET_Meter_Task;
