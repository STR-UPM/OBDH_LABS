/*****************************************************************************
**                                                                          **
**          Copyright (C) 2022 Universidad Politécnica de Madrid            **
**                                                                          **
** This is free software;  you can redistribute it  and/or modify it  under **
** terms of the  GNU General Public License as published  by the Free Soft- **
** ware  Foundation;  either version 3,  or (at your option) any later ver- **
** sion.  This software is distributed in the hope  that it will be useful, **
** but WITHOUT ANY WARRANTY;  without even the implied warranty of MERCHAN- **
** TABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public **
** License for  more details.  You should have  received  a copy of the GNU **
** General  Public  License  distributed  with  this  software;   see  file **
** COPYING3.  If not, go to http://www.gnu.org/licenses for a complete copy **
** of the license.                                                          **
**                                                                          **
*****************************************************************************/

/* Body file for function Sensors
 * Provided interfaces : Get
 * Required interfaces :
 * User-defined properties for this function:
 * Timers              :
 */

#include "sensors.h"
#include <stdio.h>
#include <stdlib.h> // rand

/***********************
 * Private subprograms *
 ***********************/

static asn1SccT_UInt16 generate_random(int upper_bound,
                                       int lower_bound)
{
    asn1SccT_UInt16 random = (rand() % (upper_bound - lower_bound + 1) + lower_bound);
    return random;
}

/****************************
 * Public subprograms (PIs) *
 ****************************/

void sensors_startup(void)
{
   // Write your initialisation code, but DO NOT CALL REQUIRED INTERFACES
   puts ("[Sensors] Startup");
}

void sensors_PI_Get
      (asn1SccAnalog_Data_Table *OUT_ad)

{
   const asn1SccT_UInt16 T0 = 1070;
   const asn1SccT_UInt16 V0 = 2080;

   OUT_ad->obc_t = T0 + generate_random(0, 7);
   OUT_ad->obc_v = V0 + generate_random(0, 3);
}


