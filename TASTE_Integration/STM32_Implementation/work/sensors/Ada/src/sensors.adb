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

--  Body file for function Sensors
--  Provided interfaces : Get
--  Required interfaces : 
--  Timers              : 

with interfaces;                        use interfaces;
with Ada.Numerics.Discrete_Random;      -- generic pkg

package body Sensors is

   type T_Rand_Range is range 0 .. 7;
   type V_Rand_Range is range 0 .. 3;

   package T_Rand is new Ada.Numerics.Discrete_Random (T_Rand_Range);
   package V_Rand is new Ada.Numerics.Discrete_Random (V_Rand_Range);

   T_Noise : T_Rand.Generator;
   V_Noise : V_Rand.Generator;

   procedure Get (AD : out asn1SccAnalog_Data_Table) is
      T0 : asn1SccT_UInt16 := 1070;
      V0 : asn1SccT_UInt16 := 2080;
   begin
      AD.obc_t := T0 + asn1SccT_UInt16 (T_Rand.Random (T_Noise));
      AD.obc_v := V0 + asn1SccT_UInt16 (V_Rand.Random (V_Noise));
   end Get;


begin
   null;
end Sensors;

