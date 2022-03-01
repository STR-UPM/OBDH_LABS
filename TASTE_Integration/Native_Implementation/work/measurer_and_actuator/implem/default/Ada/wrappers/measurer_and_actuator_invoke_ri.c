// Implementation of the glue code in C handling required interfaces

#include <stdlib.h>
#ifdef __unix__
   #include <stdio.h>
   #include "PrintTypesAsASN1.h"
   #include "timeInMS.h"
#endif
#include "C_ASN1_Types.h"
#include "dataview-uniq.h"

extern unsigned measurer_and_actuator_initialized;

void measurer_and_actuator_RI_Read_MGM
      (asn1SccT_B_b_T *OUT_bbt);
void measurer_and_actuator_RI_Read_MGM
      (asn1SccT_B_b_T *OUT_bbt)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to Simulated_ACS_HW (corresponding PI: Read_MGM)
         printf ("INNER_RI: measurer_and_actuator,simulated_acs_hw,read_mgm,read_mgm,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif

   size_t      size_OUT_buf_bbt = 0;

   // Send the message via the middleware API
   extern void vm_measurer_and_actuator_read_mgm
     (void *, size_t *);

   vm_measurer_and_actuator_read_mgm
     ((void *)OUT_bbt, &size_OUT_buf_bbt);


}


void measurer_and_actuator_RI_Step
      (const asn1SccT_B_b_T      *IN_bbt,
       const asn1SccT_Omega      *IN_omega,
       const asn1SccT_Float      *IN_k_pb,
       const asn1SccT_Float      *IN_k_pe,
       const asn1SccT_Float      *IN_m_m,
       const asn1SccT_MT_Working *IN_mt_working,
       asn1SccT_Control          *OUT_control);
void measurer_and_actuator_RI_Step
      (const asn1SccT_B_b_T      *IN_bbt,
       const asn1SccT_Omega      *IN_omega,
       const asn1SccT_Float      *IN_k_pb,
       const asn1SccT_Float      *IN_k_pe,
       const asn1SccT_Float      *IN_m_m,
       const asn1SccT_MT_Working *IN_mt_working,
       asn1SccT_Control          *OUT_control)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to ACS_Algorithm (corresponding PI: Step)
         printf ("INNER_RI: measurer_and_actuator,acs_algorithm,step,step,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif

   size_t      size_OUT_buf_control = 0;

   // Send the message via the middleware API
   extern void vm_measurer_and_actuator_step
     (void *, size_t,
      void *, size_t,
      void *, size_t,
      void *, size_t,
      void *, size_t,
      void *, size_t,
      void *, size_t *);

   vm_measurer_and_actuator_step
     ((void *)IN_bbt, sizeof(asn1SccT_B_b_T),
      (void *)IN_omega, sizeof(asn1SccT_Omega),
      (void *)IN_k_pb, sizeof(asn1SccT_Float),
      (void *)IN_k_pe, sizeof(asn1SccT_Float),
      (void *)IN_m_m, sizeof(asn1SccT_Float),
      (void *)IN_mt_working, sizeof(asn1SccT_MT_Working),
      (void *)OUT_control, &size_OUT_buf_control);


}


void measurer_and_actuator_RI_control_MGT
      (const asn1SccT_Control *IN_control);
void measurer_and_actuator_RI_control_MGT
      (const asn1SccT_Control *IN_control)
{
   #ifdef __unix__
      // Log MSC data on Linux when environment variable is set
      static int innerMsc = -1;
      if (-1 == innerMsc)
         innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
      if (1 == innerMsc) {
         long long msc_time = getTimeInMilliseconds();
         // Log message to Simulated_ACS_HW (corresponding PI: control_MGT)
         printf ("INNER_RI: measurer_and_actuator,simulated_acs_hw,control_mgt,control_mgt,%lld\n", msc_time);
         fflush(stdout);
      }
   #endif


   // Send the message via the middleware API
   extern void vm_measurer_and_actuator_control_mgt
     (void *, size_t);

   vm_measurer_and_actuator_control_mgt
     ((void *)IN_control, sizeof(asn1SccT_Control));


}

