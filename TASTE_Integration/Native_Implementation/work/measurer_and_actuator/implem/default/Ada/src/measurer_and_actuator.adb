------------------------------------------------------------------------------
--                                                                          --
--          Copyright (C) 2022 Universidad Politécnica de Madrid            --
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

--  Body file for function Measurer_And_Actuator
--  Provided interfaces : Tick
--  Required interfaces : Read_MGM, Step, control_MGT
--  Timers              : 

with Ada.Text_IO;

use Ada.Text_IO;

package body Measurer_And_Actuator is
   
   procedure Tick is
      Bbt        : asn1SccT_B_B_T;
      Omega      : asn1SccT_Omega :=
        asn1SccT_Omega'(Data => (0.0, 0.0, 0.1));
      K_Pb       : asn1SccT_Float := 2.0;
      K_Pe       : asn1SccT_Float := 8.0;
      M_M        : asn1SccT_Float := 15.0;
      Mt_Working : asn1SccT_Mt_Working :=
        asn1SccT_MT_Working'( Data => (1.0, 1.0, 1.0) );
      Control    : asn1SccT_Control;
   begin
      Read_Mgm (Bbt);
      Step (Bbt, Omega, K_Pb, K_Pe, M_M, Mt_Working, Control);
      Control_Mgt (Control);
   end Tick;

begin
   
   Put_Line("[Measurer_And_Actuator] Started.");

end Measurer_And_Actuator;

