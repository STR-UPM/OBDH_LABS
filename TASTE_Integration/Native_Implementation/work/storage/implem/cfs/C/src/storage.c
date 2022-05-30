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

/* Body file for function Storage
 * Provided interfaces : Get, Last, Put
 * Required interfaces : 
 * User-defined properties for this function:
 * Timers              : 
 */

#include "storage.h"
#include <stdio.h>

/* Include Context Parameters (constants defined in the Interface View) */
#include "Context-storage.h"

/*******************
 * Private members *
 *******************/

#define BOX_CAPACITY (5)
static asn1SccSatellite_State box [BOX_CAPACITY];
static int next_in  = 0; // next new item
static int last_in  = 0; // newest item in buffer
static int next_out = 0; // oldest item in buffer
static int count    = 0; // # elements in buffer

/***********************
 * Private subprograms *
 ***********************/

static asn1SccT_Boolean is_empty() {
    return count == 0;
}

static asn1SccT_Boolean is_full() {
    return count == BOX_CAPACITY;
}

/****************************
 * Public subprograms (PIs) *
 ****************************/

void storage_startup(void)
{
    puts ("[Storage] Startup");
}

void storage_PI_Get
      (asn1SccSatellite_State *OUT_out_data,
       asn1SccT_Boolean *OUT_success)
{
    *OUT_success = !is_empty();
    if (*OUT_success) {
        *OUT_out_data = box[next_out];
        next_out = (next_out == BOX_CAPACITY - 1) ? (0) : (next_out + 1);
        count = count - 1;
    }
}


void storage_PI_Last
      (asn1SccSatellite_State *OUT_out_data)
{
   *OUT_out_data = box[last_in];
}


void storage_PI_Put
      (const asn1SccSatellite_State *IN_in_data)
{
   box[next_in] = *IN_in_data;
   last_in = next_in;
   next_in = (next_in == BOX_CAPACITY - 1) ? (0) : (next_in + 1);
   if (is_full()) {
       // overwrite last data
       next_out = (next_out == BOX_CAPACITY - 1) ? (0) : (next_out + 1);
   } else {
       count = count + 1;
   }
}


