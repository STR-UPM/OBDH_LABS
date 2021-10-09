------------------------------------------------------------------------------
--                                                                          --
--          Copyright (C) 2020 Universidad Politécnica de Madrid            --
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

-- ADCS subsystem

with Ada.Real_Time; use Ada.Real_Time;
with System;

package ADCS is

   Period       : constant Ada.Real_Time.Time_Span
     := Ada.Real_Time.Milliseconds (100);                  -- Should be 2 s
   ADCS_Priority : constant System.Priority := 10;

   --  Initialize the ADCS subsystem
   procedure Initialize;

private

   Initial_Delay       : constant Ada.Real_Time.Time_Span
     := Ada.Real_Time.Milliseconds (1_000);                           --    1 s

   -- ADCS task
   task ADCS_Task
      with Priority => ADCS_Priority;

end ADCS;
