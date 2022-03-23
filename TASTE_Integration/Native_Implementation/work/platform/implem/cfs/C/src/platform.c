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

/* Body file for function Platform
 * Provided interfaces : HK_Tick
 * Required interfaces : Get, Put
 * User-defined properties for this function:
 * Timers              :
 */

#include "platform.h"
#include <stdio.h>
#include <time.h>

/***********************
 * Private subprograms *
 ***********************/
static void get_timestamp(char timestamp [20]) {
    time_t ltime;
    ltime=time(NULL);
    struct tm *tm;
    tm = localtime(&ltime);

    sprintf(timestamp,
            "%04d-%02d-%02d% 02d:%02d:%02d",
            tm->tm_year+1900, tm->tm_mon, tm->tm_mday,
            tm->tm_hour, tm->tm_min, tm->tm_sec);
}

static void get(asn1SccSatellite_State *s) {
    asn1SccAnalog_Data_Table data;
    platform_RI_Get(&data);

    s->data      = data;
    s->timestamp = time(NULL);

}

/****************************
 * Public subprograms (PIs) *
 ****************************/

void platform_startup(void)
{
   puts ("[Platform] Startup");
}

void platform_PI_HK_Tick(void)
{
   // Write your code here
    asn1SccSatellite_State s;
    get(&s);
    platform_RI_Put(&s);
}


