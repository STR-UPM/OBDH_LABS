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

#include "fails_y.h"

void Fails_Y_initOutputs
  (GASINGLE M_yz[3])
{
   GAUINT8 i;

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/M_yz' */
   for (i = 0; i <= 2; i++) {
      M_yz[i] = 0.0E+00;
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/M_yz' */

}
void Fails_Y_comp
  (GASINGLE const B_tot,
   GASINGLE const b[3],
   GASINGLE const T_Nm[3],
   GASINGLE M_yz[3])
{
   GASINGLE Mux_1_out1[6];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Mux/OutDataPort1 */

   GASINGLE Reshape_out1[2][3];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Reshape/OutDataPort1 */

   GASINGLE Product1_out1[2];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails Y/Product1/OutDataPort1 */

   GASINGLE Product3_out1[2];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails Y/Product3/OutDataPort1 */

   GASINGLE Mux_out1[3];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails Y/Mux/OutDataPort1 */

   GAUINT8 Idx;
   GAUINT8 i;
   GAUINT8 h;

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn9' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn8' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn5' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn3' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn2' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn1' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/b' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Mux' */
   Mux_1_out1[0] = (GASINGLE) qgen_safe_div_gareal ((GAREAL) -(b[0] * b[2]), (GAREAL) b[1] + 1.0E-10 * (GAREAL) (b[1] == 0.0E+00));
   Mux_1_out1[1] = (GASINGLE) qgen_safe_div_gareal ((GAREAL) -(1.0E+00 - qgen_pow_gasingle (b[0], 2.0E+00)), (GAREAL) b[1] + 1.0E-10 * (GAREAL) (b[1] == 0.0E+00));
   Mux_1_out1[2] = -b[2];
   Mux_1_out1[3] = b[0];
   Mux_1_out1[4] = (GASINGLE) qgen_safe_div_gareal ((GAREAL) (1.0E+00 - qgen_pow_gasingle (b[2], 2.0E+00)), (GAREAL) b[1] + 1.0E-10 * (GAREAL) (b[1] == 0.0E+00));
   Mux_1_out1[5] = (GASINGLE) qgen_safe_div_gareal ((GAREAL) (b[0] * b[2]), (GAREAL) b[1] + 1.0E-10 * (GAREAL) (b[1] == 0.0E+00));
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Mux' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/b' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn1' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn2' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn3' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn5' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn8' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn9' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Reshape' */
   for (Idx = 0; Idx <= 5; Idx++) {
      Reshape_out1[qgen_mod_gauint8 (Idx, 2)][Idx / 2] = Mux_1_out1[Idx];
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Reshape' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/T_Nm' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Product1' */
   for (i = 0; i <= 1; i++) {
      Product1_out1[i] = Reshape_out1[i][0] * T_Nm[0];
      for (h = 1; h <= 2; h++) {
         Product1_out1[i] = Product1_out1[i] + Reshape_out1[i][h] * T_Nm[h];
      }
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Product1' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/T_Nm' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/B_tot' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Product3' */
   for (i = 0; i <= 1; i++) {
      Product3_out1[i] = 1.0E+00 / B_tot * Product1_out1[i];
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Product3' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/B_tot' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Demux' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Constant' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Mux' */
   Mux_out1[0] = Product3_out1[0];
   Mux_out1[1] = 0.0E+00;
   Mux_out1[2] = Product3_out1[1];
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Mux' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Constant' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/Demux' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/M_yz' */
   for (i = 0; i <= 2; i++) {
      M_yz[i] = Mux_out1[i];
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y/M_yz' */

}
/*  @EOF  */
