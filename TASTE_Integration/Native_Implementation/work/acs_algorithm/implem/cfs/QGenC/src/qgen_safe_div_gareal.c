/*----------------------------------------------------------------------------
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
----------------------------------------------------------------------------*/

#include "qgen_safe_div_gareal.h"
#include "qgen_isinf_gareal.h"
#include "qgen_isnan_gareal.h"
#include "qgen_getinf_gareal.h"
#include "qgen_getnan_gareal.h"

GAREAL qgen_safe_div_gareal
  (GAREAL l, GAREAL r)
{
   if (qgen_isnan_gareal(l) || qgen_isnan_gareal(r))
       return qgen_getnan_gareal();
   if (qgen_isinf_gareal(l))
   {
      if (qgen_isinf_gareal(r))
         return qgen_getnan_gareal();
      return l;
   }
   if (r == 0)
      return qgen_getinf_gareal();
   if (qgen_isinf_gareal(r))
      return 0;
   return l / r;
}

