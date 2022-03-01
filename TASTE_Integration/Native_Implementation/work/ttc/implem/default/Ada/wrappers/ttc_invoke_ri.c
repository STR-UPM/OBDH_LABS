// Implementation of the glue code in C handling required interfaces

#include <stdlib.h>
#ifdef __unix__
   #include <stdio.h>
   #include "PrintTypesAsASN1.h"
   #include "timeInMS.h"
#endif
#include "C_ASN1_Types.h"
#include "dataview-uniq.h"

extern unsigned ttc_initialized;

void ttc_RI_Current_Mode
      (asn1SccOperating_Mode *OUT_current);
void ttc_RI_Current_Mode
      (asn1SccOperating_Mode *OUT_current)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to Manager (corresponding PI: Current_Mode)
         printf ("INNER_RI: ttc,manager,current_mode,current_mode,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif

   size_t      size_OUT_buf_current = 0;

   // Send the message via the middleware API
   extern void vm_ttc_current_mode
     (void *, size_t *);

   vm_ttc_current_mode
     ((void *)OUT_current, &size_OUT_buf_current);


}


void ttc_RI_Get
      (asn1SccSatellite_State *OUT_out_data);
void ttc_RI_Get
      (asn1SccSatellite_State *OUT_out_data)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to Storage (corresponding PI: Get)
         printf ("INNER_RI: ttc,storage,get,get,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif

   size_t      size_OUT_buf_out_data = 0;

   // Send the message via the middleware API
   extern void vm_ttc_get
     (void *, size_t *);

   vm_ttc_get
     ((void *)OUT_out_data, &size_OUT_buf_out_data);


}


void ttc_RI_Last
      (asn1SccSatellite_State *OUT_out_data);
void ttc_RI_Last
      (asn1SccSatellite_State *OUT_out_data)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to Storage (corresponding PI: Last)
         printf ("INNER_RI: ttc,storage,last,last,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif

   size_t      size_OUT_buf_out_data = 0;

   // Send the message via the middleware API
   extern void vm_ttc_last
     (void *, size_t *);

   vm_ttc_last
     ((void *)OUT_out_data, &size_OUT_buf_out_data);


}


void ttc_RI_Process_TC
      (const asn1SccTC_Type *IN_tc);
void ttc_RI_Process_TC
      (const asn1SccTC_Type *IN_tc)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to Manager (corresponding PI: Process_TC)
         printf ("INNER_RI: ttc,manager,process_tc,process_tc,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif


   // Send the message via the middleware API
   extern void vm_ttc_process_tc
     (void *, size_t);

   vm_ttc_process_tc
     ((void *)IN_tc, sizeof(asn1SccTC_Type));


}


void ttc_RI_TM
      (const asn1SccTM_Type *IN_telemetry);
void ttc_RI_TM
      (const asn1SccTM_Type *IN_telemetry)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to GSSW (corresponding PI: TM)
         printf ("INNER_RI: ttc,gssw,tm,tm,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif


   // Send the message via the middleware API
   extern void vm_ttc_tm
     (void *, size_t);

   vm_ttc_tm
     ((void *)IN_telemetry, sizeof(asn1SccTM_Type));


}

