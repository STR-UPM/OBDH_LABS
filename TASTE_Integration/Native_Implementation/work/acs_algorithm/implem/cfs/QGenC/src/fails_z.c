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

#include "fails_z.h"

void Fails_Z_initOutputs
  (GASINGLE M_xy[3])
{
   GAUINT8 i;

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/M_xy' */
   for (i = 0; i <= 2; i++) {
      M_xy[i] = 0.0E+00;
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/M_xy' */

}
void Fails_Z_comp
  (GASINGLE const B_tot,
   GASINGLE const b[3],
   GASINGLE const T_Nm[3],
   GASINGLE M_xy[3])
{
   GASINGLE Mux_1_out1[6];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Mux/OutDataPort1 */

   GASINGLE Reshape_out1[2][3];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Reshape/OutDataPort1 */

   GASINGLE Product1_out1[2];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails Z/Product1/OutDataPort1 */

   GASINGLE Product3_out1[2];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails Z/Product3/OutDataPort1 */

   GASINGLE Mux_out1[3];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails Z/Mux/OutDataPort1 */

   GAUINT8 Idx;
   GAUINT8 i;
   GAUINT8 h;
   GAUINT8 Idx1;

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn7' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn6' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn3' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn2' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn10' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn1' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/b' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Mux' */
   Mux_1_out1[0] = (GASINGLE) qgen_safe_div_gareal ((GAREAL) (b[1] * b[0]), (GAREAL) b[2] + 1.0E-10 * (GAREAL) (b[2] == 0.0E+00));
   Mux_1_out1[1] = (GASINGLE) qgen_safe_div_gareal ((GAREAL) (1.0E+00 - qgen_pow_gasingle (b[0], 2.0E+00)), (GAREAL) b[2] + 1.0E-10 * (GAREAL) (b[2] == 0.0E+00));
   Mux_1_out1[2] = (GASINGLE) qgen_safe_div_gareal ((GAREAL) -(1.0E+00 - qgen_pow_gasingle (b[1], 2.0E+00)), (GAREAL) b[2] + 1.0E-10 * (GAREAL) (b[2] == 0.0E+00));
   Mux_1_out1[3] = (GASINGLE) qgen_safe_div_gareal ((GAREAL) -(b[1] * b[0]), (GAREAL) b[2] + 1.0E-10 * (GAREAL) (b[2] == 0.0E+00));
   Mux_1_out1[4] = b[1];
   Mux_1_out1[5] = -b[0];
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Mux' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/b' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn1' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn10' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn2' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn3' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn6' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn7' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Reshape' */
   for (Idx = 0; Idx <= 5; Idx++) {
      Reshape_out1[qgen_mod_gauint8 (Idx, 2)][Idx / 2] = Mux_1_out1[Idx];
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Reshape' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/T_Nm' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Product1' */
   for (i = 0; i <= 1; i++) {
      Product1_out1[i] = Reshape_out1[i][0] * T_Nm[0];
      for (h = 1; h <= 2; h++) {
         Product1_out1[i] = Product1_out1[i] + Reshape_out1[i][h] * T_Nm[h];
      }
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Product1' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/T_Nm' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/B_tot' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Product3' */
   for (i = 0; i <= 1; i++) {
      Product3_out1[i] = 1.0E+00 / B_tot * Product1_out1[i];
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Product3' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/B_tot' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Constant' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Mux' */
   for (Idx1 = 0; Idx1 <= 1; Idx1++) {
      Mux_out1[Idx1] = Product3_out1[Idx1];
   }
   Mux_out1[2] = 0.0E+00;
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Mux' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/Constant' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/M_xy' */
   for (i = 0; i <= 2; i++) {
      M_xy[i] = Mux_out1[i];
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z/M_xy' */

}
/*  @EOF  */
