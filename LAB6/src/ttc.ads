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

-- TTC subsystem

with Ada.Real_Time; use Ada.Real_Time;
with System;

package TTC is

   -- Real-time attributes
   Period      : Time_Span := Milliseconds (10_000); -- 10 s
   TC_Priority : constant System.Priority := 10;

   --  Initialize the TTC subsystem
   procedure Initialize;

private

   Start_Delay : Time_Span := Milliseconds (1000); -- 1s

   -- telemetry task
   task TM_Task
     with Priority => TC_Priority;

end TTC;
