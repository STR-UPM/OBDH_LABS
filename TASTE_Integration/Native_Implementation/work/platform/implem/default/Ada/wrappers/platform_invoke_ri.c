// Implementation of the glue code in C handling required interfaces

#include <stdlib.h>
#ifdef __unix__
   #include <stdio.h>
   #include "PrintTypesAsASN1.h"
   #include "timeInMS.h"
#endif
#include "C_ASN1_Types.h"
#include "dataview-uniq.h"

extern unsigned platform_initialized;

void platform_RI_Get
      (asn1SccAnalog_Data_Table *OUT_ad);
void platform_RI_Get
      (asn1SccAnalog_Data_Table *OUT_ad)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to Sensors (corresponding PI: Get)
         printf ("INNER_RI: platform,sensors,get,get,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif

   size_t      size_OUT_buf_ad = 0;

   // Send the message via the middleware API
   extern void vm_platform_get
     (void *, size_t *);

   vm_platform_get
     ((void *)OUT_ad, &size_OUT_buf_ad);


}


void platform_RI_Put
      (const asn1SccSatellite_State *IN_in_data);
void platform_RI_Put
      (const asn1SccSatellite_State *IN_in_data)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to Storage (corresponding PI: Put)
         printf ("INNER_RI: platform,storage,put,put,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif


   // Send the message via the middleware API
   extern void vm_platform_put
     (void *, size_t);

   vm_platform_put
     ((void *)IN_in_data, sizeof(asn1SccSatellite_State));


}

