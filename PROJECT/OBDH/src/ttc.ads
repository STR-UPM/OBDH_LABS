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

-- TTC subsystem

with Ada.Real_Time; use Ada.Real_Time;
with System;

package TTC is

   -- Real-time attributes
   Basic_TM_Period   : Time_Span := Milliseconds (10_000); -- 10 s
   Basic_TM_Priority : constant System.Priority := 12;

   TC_Period         : Time_Span := Milliseconds (2000);   --  2 s
   TC_Priority       : constant System.Priority := 10;
   -- The TC receiver task has a lower priority than the TM task in order
   -- no to block the serial line.

   --  Initialize the TTC subsystem
   procedure Initialize;

   -- Send a TM message
   procedure Send (Message : String);

private

   Start_Delay : Time_Span := Milliseconds (1000); -- 1s

   -- basic telemetry task
   task Basic_TM_Task
     with Priority => Basic_TM_Priority;

   -- TC receiver task
   task TC_Task
     with Priority => TC_Priority;

end TTC;
