// Implementation of the glue code in C handling required interfaces

#include <stdlib.h>
#ifdef __unix__
   #include <stdio.h>
   #include "PrintTypesAsASN1.h"
   #include "timeInMS.h"
#endif
#include "dataview-uniq.h"

extern unsigned demo_timer_manager_initialized;

void demo_timer_manager_RI_manager_Coverage_Timer(void);
void demo_timer_manager_RI_manager_Coverage_Timer(void)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to manager (corresponding PI: Coverage_Timer)
         printf ("INNER_RI: demo_timer_manager,manager,manager_coverage_timer,coverage_timer,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif


   // Send the message via the middleware API
   extern void vm_demo_timer_manager_manager_coverage_timer(void);
   vm_demo_timer_manager_manager_coverage_timer();

}

