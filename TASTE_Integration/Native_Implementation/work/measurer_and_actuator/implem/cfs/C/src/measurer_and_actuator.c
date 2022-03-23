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

/* Body file for function Measurer_And_Actuator
 * Provided interfaces : Tick
 * Required interfaces : Read_MGM, Step, control_MGT
 * User-defined properties for this function:
 * Timers              : 
 */

#include "measurer_and_actuator.h"
#include <stdio.h>

/****************************
 * Public subprograms (PIs) *
 ****************************/

void measurer_and_actuator_startup(void)
{
    puts ("[Measurer_And_Actuator] Startup");
}

void measurer_and_actuator_PI_Tick(void)
{
   asn1SccT_B_b_T bbt;
   asn1SccT_Omega omega = {
       .arr = {0.0, 0.0, 0.1}
   };
   asn1SccT_Float k_pb = 2.0;
   asn1SccT_Float k_pe = 8.0;
   asn1SccT_Float m_m  = 15.0;
   asn1SccT_MT_Working mt_working = {
       .arr = {1.0, 1.0, 1.0}
   };
   asn1SccT_Control control;

   measurer_and_actuator_RI_Read_MGM(&bbt);
   measurer_and_actuator_RI_Step(&bbt, &omega, &k_pb, &k_pe, &m_m, &mt_working, &control);
   measurer_and_actuator_RI_control_MGT(&control);
}


