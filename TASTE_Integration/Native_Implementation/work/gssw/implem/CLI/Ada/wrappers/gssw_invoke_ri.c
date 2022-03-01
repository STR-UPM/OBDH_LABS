// Implementation of the glue code in C handling required interfaces

#include <stdlib.h>
#ifdef __unix__
   #include <stdio.h>
   #include "PrintTypesAsASN1.h"
   #include "timeInMS.h"
#endif
#include "C_ASN1_Types.h"
#include "dataview-uniq.h"

extern unsigned gssw_initialized;

void gssw_RI_TC
      (const asn1SccTC_Type *IN_telecommand);
void gssw_RI_TC
      (const asn1SccTC_Type *IN_telecommand)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to TTC (corresponding PI: TC)
         printf ("INNER_RI: gssw,ttc,tc,tc,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif


   // Send the message via the middleware API
   extern void vm_gssw_tc
     (void *, size_t);

   vm_gssw_tc
     ((void *)IN_telecommand, sizeof(asn1SccTC_Type));


}

