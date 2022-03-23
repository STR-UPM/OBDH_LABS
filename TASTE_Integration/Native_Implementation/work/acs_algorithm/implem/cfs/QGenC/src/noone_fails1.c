/* Copyright (C) Your Company Name */
/*
 * @generated with QGen Code Generator 22.1 (20220109)
 * Command line arguments: ./xmi/Step.xmi
 *   --gen-entrypoint
 *   --wrap-io
 *   --pre-process-xmi
 *   --incremental
 *   --no-misra
 *   --language c
 *   --output src
*/

#include "noone_fails1.h"

void Noone_Fails1_initOutputs
  (GASINGLE M_xyz[3])
{
   GAUINT8 i;

   /* Block 'Step/control/If Fail Recalculate/Noone Fails1/M_xyz' */
   for (i = 0; i <= 2; i++) {
      M_xyz[i] = 0.0E+00;
   }
   /* End Block 'Step/control/If Fail Recalculate/Noone Fails1/M_xyz' */

}
void Noone_Fails1_comp
  (GASINGLE const M[3],
   GASINGLE M_xyz[3])
{
   GAUINT8 i;

   /* Block 'Step/control/If Fail Recalculate/Noone Fails1/M' */
   /* Block 'Step/control/If Fail Recalculate/Noone Fails1/M_xyz' */
   for (i = 0; i <= 2; i++) {
      M_xyz[i] = M[i];
   }
   /* End Block 'Step/control/If Fail Recalculate/Noone Fails1/M_xyz' */
   /* End Block 'Step/control/If Fail Recalculate/Noone Fails1/M' */

}
/*  @EOF  */
