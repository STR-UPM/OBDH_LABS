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

/* Body file for function TTC
 * Provided interfaces : HK_Task, TC, TM_Basic_Task, TM_Error, TM_Mode
 * Required interfaces : Current_Mode, Get, Last, Process_TC, TM
 * User-defined properties for this function:
 * Timers              : 
 */

#include "ttc.h"
#include <stdio.h>
#include <time.h>
#include <string.h> // memset

/***********************
 * Private subprograms *
 ***********************/

static asn1SccTM_Type pack_TM_hello() {
    asn1SccTM_Type tm_hello;
    tm_hello.kind = TM_Type_hello_PRESENT;
    tm_hello.u.hello.tm_timestamp = time(NULL);
    ttc_RI_Last(&tm_hello.u.hello.tm_payload);
}

/****************************
 * Public subprograms (PIs) *
 ****************************/

void ttc_startup(void)
{
    puts ("[TTC] Startup");
}

void ttc_PI_HK_Task(void)
{
    asn1SccTM_Type tm_hk;
    tm_hk.kind = TM_Type_hk_PRESENT;
    asn1SccTM_Housekeeping_Contents_Initialize(&tm_hk.u.hk.tm_payload);
    // sets to zero
    for (int i = 0; i < 4; ++i) {
        asn1SccT_Boolean reading_success = false;
        ttc_RI_Get(&(tm_hk.u.hk.tm_payload.arr[i]),
                   &reading_success);
        if (!reading_success) {
            break;
        }
    }

    ttc_RI_TM(&tm_hk);
}


void ttc_PI_TC
      (const asn1SccTC_Type *IN_telecommand)

{
    ttc_RI_Process_TC(IN_telecommand);
}


void ttc_PI_TM_Basic_Task(void)
{
    asn1SccOperating_Mode curr_mode;
    ttc_RI_Current_Mode(&curr_mode);
    if (curr_mode == asn1Sccidle) {
        asn1SccTM_Type tm_hello = pack_TM_hello();
        ttc_RI_TM(&tm_hello);
    }
}


void ttc_PI_TM_Error
      (const asn1SccTM_Error_Contents *IN_contents)

{
    asn1SccTM_Type tm_error;
    tm_error.kind = TM_Type_err_PRESENT;
    tm_error.u.err.tm_timestamp = time(NULL);
    tm_error.u.err.tm_payload   = *IN_contents;

    ttc_RI_TM(&tm_error);
}


void ttc_PI_TM_Mode
      (const asn1SccOperating_Mode *IN_op_mode)

{
    asn1SccTM_Type tm_mode;
    tm_mode.kind = TM_Type_mode_PRESENT;
    tm_mode.u.mode.tm_timestamp = time(NULL);
    tm_mode.u.mode.tm_payload   = *IN_op_mode;

    ttc_RI_TM(&tm_mode);
}


