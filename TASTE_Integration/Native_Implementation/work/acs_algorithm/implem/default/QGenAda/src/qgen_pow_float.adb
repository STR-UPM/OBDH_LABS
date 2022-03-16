------------------------------------------------------------------------------
--                                 Q G E N                                  --
--                                                                          --
--                     Copyright (C) 2011-2021, AdaCore                     --
--                     Copyright (C) 2011-2018, IB Krates                   --
--                                                                          --
-- This library is free software;  you can redistribute it and/or modify it --
-- under terms of the  GNU General Public License  as published by the Free --
-- Software  Foundation;  either version 3,  or (at your  option) any later --
-- version. This library is distributed in the hope that it will be useful, --
-- but WITHOUT ANY WARRANTY;  without even the implied warranty of MERCHAN- --
-- TABILITY or FITNESS FOR A PARTICULAR PURPOSE.                            --
--                                                                          --
-- As a special exception under Section 7 of GPL version 3, you are granted --
-- additional permissions described in the GCC Runtime Library Exception,   --
-- version 3.1, as published by the Free Software Foundation.               --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
------------------------------------------------------------------------------

with Ada.Numerics.Elementary_Functions;

package body Qgen_Pow_Float is
   function pow (Left, Right : Float) return Float is
      use Ada.Numerics.Elementary_Functions;
   begin
      if abs (Right) - abs (Float'Rounding (Right)) = 0.0 then
         --  When Right is integer use the (Float ** Integer).
         --  (Float ** Float) raises an exception when Right is negative
         --  (because the result can be complex), but Simulink (and C) allow
         --  negative right operators only when having integer values.

         return Left ** Integer (Right);

      else
         return Left ** Right;
      end if;
   end pow;
end Qgen_Pow_Float;
