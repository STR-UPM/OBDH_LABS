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

--  Platform subsystem

with Ada.Real_Time; use Ada.Real_Time;
with System;

package Platform is

   --  Real-time attributes
   Period      : Time_Span := Milliseconds (1000);  -- 1s
   HK_Priority : constant System.Priority := 20;

   --  Initialize the housekeeping subsystem
   procedure Initialize;

private

   Start_Delay : Time_Span := Milliseconds (1000); -- 1s

   task Housekeeping_Task
     with Priority => HK_Priority;

end Platform;
