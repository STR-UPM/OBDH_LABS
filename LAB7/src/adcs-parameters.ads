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

with Ada.Real_Time;

with Ada.Numerics;
with Interfaces;

package ADCS.Parameters is

   use type Interfaces.IEEE_Float_32;
   
   subtype ADCS_Parameter is Interfaces.IEEE_Float_32;
   subtype ADCS_Value is Interfaces.IEEE_Float_32;

   subtype Angular_Velocity is
     ADCS_Parameter range (-2.0*Ada.Numerics.Pi)..(2.0*Ada.Numerics.Pi);

   type Omega_Axis is
      record
         omega_tx : Angular_Velocity;
         omega_ty : Angular_Velocity;
         omega_tz : Angular_Velocity;
      end record;
   
   subtype Amplification_Constant_Base is
     ADCS_Parameter range -9.0..9.0;

   subtype Amplification_Constant_Exponent is
     ADCS_Parameter range 1.0..10.0;
 
   type ADCS_Axis       is (X_Axis, Y_Axis, Z_Axis);

   type Working_Axis is array (ADCS_Axis) of ADCS_Parameter;
   
   subtype Maximum_Torque is ADCS_Parameter range 0.0..20.0;
   
   type Controller_Parameters is
      record
         omega      : Omega_Axis;
         k_pb       : Amplification_Constant_Base;
         k_pe       : Amplification_Constant_Exponent;
         m_m        : Maximum_Torque;
         MT_Working : Working_Axis;
      end record;
   
   Period       : constant Ada.Real_Time.Time_Span
     := Ada.Real_Time.Milliseconds (100);                           --    2 s
   Initial_Delay       : constant Ada.Real_Time.Time_Span
     := Ada.Real_Time.Milliseconds (1_000);                           --    2 s
   
   --- Default parameters for controller block ----
   Default_omega      : constant Omega_Axis := (0.0, 0.0, 0.1);
   Default_k_pb       : constant Amplification_Constant_Base := 2.0;
   Default_k_pe       : constant Amplification_Constant_Exponent := 8.0;
   Default_MT_Working : constant Working_Axis := (1.0, 1.0, 1.0);
   Default_m_m        : constant Maximum_Torque := 15.0;

   -- Controller parameters ---
   Default_Controller_Parameters : 
   constant Controller_Parameters 
     := (Default_omega,
         Default_k_pb,
         Default_k_pe,
         Default_m_m,
         Default_MT_Working);

   type ADCS_Vector is array (ADCS_Axis) of ADCS_Value;
   type MGM_Readings is array (1..15) of ADCS_Value;

   type Controller_Input is -- Control _U
      record
         B_b_T              : MGM_Readings;
         Control_Parameters : Controller_Parameters := Default_Controller_Parameters;
      end record;

   type Controller_Output is -- Control_Y
      record
         Control : ADCS_Vector;
      end record;
   
end ADCS.Parameters;
