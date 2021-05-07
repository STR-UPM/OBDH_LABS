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
with ADCS.Parameters;    use ADCS.Parameters;
with Ada.Real_Time;      use Ada.Real_Time;
with STM32.Board;
with ADCS.HW;

package body ADCS is

   -- controller block input and ouput objects must be global
   Control_Input : Controller_Input;
   pragma Export (C, Control_Input, "rtU");

   Control_Output : Controller_Output;
   pragma Export (C, Control_Output, "rtY");

   --  Initialize the ADCS subsystem
   procedure Initialize is
      procedure Control_Initialize;
      pragma Import (C, Control_Initialize, "control_initialize");
   begin
      Control_Initialize;
   end Initialize;

   -- ADCS task
   task body ADCS_Task is
      procedure Control;
      pragma Import (C, Control, "control_step");
      Next   : Ada.Real_Time.Time := Ada.Real_Time.Clock + Initial_Delay;
   begin
      loop
         delay until Next;
         Control_Input.B_b_T := ADCS.HW.Get;
         Control;
         ADCS.HW.Put (Control_Output.Control);
         Next := Next + Period;
         STM32.Board.Red_LED.Toggle;
      end loop;
   end ADCS_Task;

end ADCS;
