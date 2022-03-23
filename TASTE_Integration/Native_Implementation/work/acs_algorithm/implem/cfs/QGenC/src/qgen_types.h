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

#ifndef QGEN_TYPES_H
#define QGEN_TYPES_H

#if __STDC_VERSION__ >= 199901L
/* fixed-length type macros are available starting C99 */

#include <stdint.h>   /* for [u]int*_t */
#include <stdbool.h>

/* Named constants */

#define GAFALSE false
#define GATRUE true

/* Default signed types */

typedef int8_t GAINT8;
typedef int16_t GAINT16;
typedef int32_t GAINT32;
typedef int64_t GAINT64;
typedef double GAREAL;
typedef float GASINGLE;
typedef char* GASTRING;

/* Default unsigned types */

typedef uint8_t GAUINT8;
typedef uint16_t GAUINT16;
typedef uint32_t GAUINT32;
typedef uint64_t GAUINT64;
typedef unsigned char GABYTE;

typedef bool GABOOL;

#else
/* C89 compiler */

/* Named constants */

#define GAFALSE 0u
#define GATRUE 1u

/* Default signed types */

typedef signed char GAINT8;
typedef short GAINT16;
typedef int GAINT32;
typedef long long int GAINT64;
typedef double GAREAL;
typedef float GASINGLE;
typedef char* GASTRING;

/* Default unsigned types */

typedef unsigned char GABOOL;
typedef unsigned char GAUINT8;
typedef unsigned short GAUINT16;
typedef unsigned int GAUINT32;
typedef long long unsigned int GAUINT64;
typedef unsigned char GABYTE;

#endif

#endif
