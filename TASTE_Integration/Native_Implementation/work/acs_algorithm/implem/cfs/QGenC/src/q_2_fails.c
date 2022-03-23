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

#include "q_2_fails.h"

void q_2_Fails_initOutputs
  (GASINGLE M_xyz[3])
{
   GAUINT8 i;

   /* Block 'Step/control/If Fail Recalculate/2 Fails/M_xyz' */
   for (i = 0; i <= 2; i++) {
      M_xyz[i] = 0.0E+00;
   }
   /* End Block 'Step/control/If Fail Recalculate/2 Fails/M_xyz' */

}
void q_2_Fails_comp
  (GASINGLE const Fail[3],
   GASINGLE const M[3],
   GASINGLE M_xyz[3])
{
   GASINGLE Mux_out1[3];
   /* Output from Step/control/If Fail Recalculate/2 Fails/Mux/OutDataPort1 */

   GAUINT8 i;

   /* Block 'Step/control/If Fail Recalculate/2 Fails/Product2' */
   /* Block 'Step/control/If Fail Recalculate/2 Fails/Fail' */
   /* Block 'Step/control/If Fail Recalculate/2 Fails/Demux1' */
   /* Block 'Step/control/If Fail Recalculate/2 Fails/M' */
   /* Block 'Step/control/If Fail Recalculate/2 Fails/Demux3' */
   /* Block 'Step/control/If Fail Recalculate/2 Fails/Product1' */
   /* Block 'Step/control/If Fail Recalculate/2 Fails/Product' */
   /* Block 'Step/control/If Fail Recalculate/2 Fails/Mux' */
   Mux_out1[0] = M[0] * Fail[0];
   Mux_out1[1] = M[1] * Fail[1];
   Mux_out1[2] = M[2] * Fail[2];
   /* End Block 'Step/control/If Fail Recalculate/2 Fails/Mux' */
   /* End Block 'Step/control/If Fail Recalculate/2 Fails/Product' */
   /* End Block 'Step/control/If Fail Recalculate/2 Fails/Product1' */
   /* End Block 'Step/control/If Fail Recalculate/2 Fails/Demux3' */
   /* End Block 'Step/control/If Fail Recalculate/2 Fails/M' */
   /* End Block 'Step/control/If Fail Recalculate/2 Fails/Demux1' */
   /* End Block 'Step/control/If Fail Recalculate/2 Fails/Fail' */
   /* End Block 'Step/control/If Fail Recalculate/2 Fails/Product2' */

   /* Block 'Step/control/If Fail Recalculate/2 Fails/M_xyz' */
   for (i = 0; i <= 2; i++) {
      M_xyz[i] = Mux_out1[i];
   }
   /* End Block 'Step/control/If Fail Recalculate/2 Fails/M_xyz' */

}
/*  @EOF  */
