// Implementation of the glue code in C handling required interfaces

#include <stdlib.h>
#ifdef __unix__
   #include <stdio.h>
   #include "PrintTypesAsASN1.h"
   #include "timeInMS.h"
#endif
#include "C_ASN1_Types.h"
#include "dataview-uniq.h"

extern unsigned manager_initialized;

void manager_RI_HK_Task(void);
void manager_RI_HK_Task(void)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to TTC (corresponding PI: HK_Task)
         printf ("INNER_RI: manager,ttc,hk_task,hk_task,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif


   // Send the message via the middleware API
   extern void vm_manager_hk_task(void);
   vm_manager_hk_task();

}


void manager_RI_RESET_Coverage_Timer(void);
void manager_RI_RESET_Coverage_Timer(void)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to demo_Timer_Manager (corresponding PI: RESET_manager_Coverage_Timer)
         printf ("INNER_RI: manager,demo_timer_manager,reset_coverage_timer,reset_manager_coverage_timer,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif


   // Send the message via the middleware API
   extern void vm_manager_reset_coverage_timer(void);
   vm_manager_reset_coverage_timer();

}


void manager_RI_SET_Coverage_Timer
      (const asn1SccT_UInt32 *IN_val);
void manager_RI_SET_Coverage_Timer
      (const asn1SccT_UInt32 *IN_val)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         PrintASN1T_UInt32 ("INNERDATA: set_coverage_timer::T_UInt32::val", IN_val);
         puts("");
         // Log message to demo_Timer_Manager (corresponding PI: SET_manager_Coverage_Timer)
         printf ("INNER_RI: manager,demo_timer_manager,set_coverage_timer,set_manager_coverage_timer,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif


   // Send the message via the middleware API
   extern void vm_manager_set_coverage_timer
     (void *, size_t);

   vm_manager_set_coverage_timer
     ((void *)IN_val, sizeof(asn1SccT_UInt32));


}


void manager_RI_TM_Error
      (const asn1SccTM_Error_Contents *IN_contents);
void manager_RI_TM_Error
      (const asn1SccTM_Error_Contents *IN_contents)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to TTC (corresponding PI: TM_Error)
         printf ("INNER_RI: manager,ttc,tm_error,tm_error,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif


   // Send the message via the middleware API
   extern void vm_manager_tm_error
     (void *, size_t);

   vm_manager_tm_error
     ((void *)IN_contents, sizeof(asn1SccTM_Error_Contents));


}


void manager_RI_TM_Mode
      (const asn1SccOperating_Mode *IN_op_mode);
void manager_RI_TM_Mode
      (const asn1SccOperating_Mode *IN_op_mode)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to TTC (corresponding PI: TM_Mode)
         printf ("INNER_RI: manager,ttc,tm_mode,tm_mode,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif


   // Send the message via the middleware API
   extern void vm_manager_tm_mode
     (void *, size_t);

   vm_manager_tm_mode
     ((void *)IN_op_mode, sizeof(asn1SccOperating_Mode));


}

