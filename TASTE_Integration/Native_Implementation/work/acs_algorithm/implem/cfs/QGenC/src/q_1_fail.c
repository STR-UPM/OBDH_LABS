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

#include "q_1_fail.h"

void q_1_Fail_initStates
  (q_1_Fail_State* const State)
{
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails X' */
   State->Fails_X_enabled = GATRUE;
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails X' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y' */
   State->Fails_Y_enabled = GATRUE;
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z' */
   State->Fails_Z_enabled = GATRUE;
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z' */

}
void q_1_Fail_initOutputs
  (GASINGLE M_xyz[3],
   q_1_Fail_State* const State)
{
   GAUINT8 i;

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails X' */
   Fails_X_initOutputs (State->Fails_X_M_yz);
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails X' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y' */
   Fails_Y_initOutputs (State->Fails_Y_M_yz);
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z' */
   Fails_Z_initOutputs (State->Fails_Z_M_xy);
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/M_xyz' */
   for (i = 0; i <= 2; i++) {
      M_xyz[i] = 0.0E+00;
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/M_xyz' */

}
void q_1_Fail_comp
  (GASINGLE const Fail[3],
   GASINGLE const M[3],
   GASINGLE const B[3],
   GASINGLE M_xyz[3],
   q_1_Fail_State* const State)
{
   GASINGLE a_elements_out1[6];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Cross Product/a elements/OutDataPort1 */

   GASINGLE b_elements_out1[6];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Cross Product/b elements/OutDataPort1 */

   GASINGLE Sqrt_out1;
   /* Output from Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Sqrt/OutDataPort1 */

   GASINGLE Sum_1_out1;
   /* Output from Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Sum/OutDataPort1 */

   GASINGLE Product4_out1[3];
   /* Output from Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Product4/OutDataPort1 */

   GASINGLE Element_product_out1[6];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Cross Product/Element product/OutDataPort1 */

   GASINGLE Add3_out1[3];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Cross Product/Add3/OutDataPort1 */

   GABOOL Logical_Operator_out1[3];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Logical Operator/OutDataPort1 */

   const GAREAL a_elements_map1[6] = {2.0E+00, 3.0E+00, 1.0E+00, 3.0E+00, 1.0E+00, 2.0E+00};
   const GAREAL b_elements_map1[6] = {3.0E+00, 1.0E+00, 2.0E+00, 2.0E+00, 3.0E+00, 1.0E+00};
   GAUINT8 Idx1;
   GAUINT8 i;

   /* Block 'Step/control/If Fail Recalculate/1 Fail/M' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Cross Product/a elements' */
   for (Idx1 = 0; Idx1 <= 5; Idx1++) {
      a_elements_out1[Idx1] = M[(GAUINT32) (a_elements_map1[Idx1] - 1.0E+00)];
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Cross Product/a elements' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/M' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/B' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Cross Product/b elements' */
   for (Idx1 = 0; Idx1 <= 5; Idx1++) {
      b_elements_out1[Idx1] = B[(GAUINT32) (b_elements_map1[Idx1] - 1.0E+00)];
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Cross Product/b elements' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/B' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Add' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Math Function' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Math Function1' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Demux' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/B' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Math Function2' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Sqrt' */
   Sqrt_out1 = qgen_sqrt_gasingle (qgen_pow_gasingle (B[0], 2.0E+00) + qgen_pow_gasingle (B[1], 2.0E+00) + qgen_pow_gasingle (B[2], 2.0E+00));
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Sqrt' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Math Function2' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/B' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Demux' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Math Function1' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Math Function' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Add' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Compare To Zero' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Sum' */
   Sum_1_out1 = Sqrt_out1 + (GASINGLE) (GAUINT8) (Sqrt_out1 == 0.0E+00);
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Sum' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Compare To Zero' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/B' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Product4' */
   for (i = 0; i <= 2; i++) {
      Product4_out1[i] = B[i] / Sum_1_out1;
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/B_tot/Subsystem/Product4' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/B' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Cross Product/Element product' */
   for (i = 0; i <= 5; i++) {
      Element_product_out1[i] = a_elements_out1[i] * b_elements_out1[i];
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Cross Product/Element product' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Cross Product/Demux2' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Cross Product/Add3' */
   for (i = 0; i <= 2; i++) {
      Add3_out1[i] = Element_product_out1[i] - Element_product_out1[i + 3];
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Cross Product/Add3' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Cross Product/Demux2' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fail' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/Logical Operator' */
   for (i = 0; i <= 2; i++) {
      Logical_Operator_out1[i] = !Fail[i];
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Logical Operator' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fail' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Selector' */
   State->Selector_out1 = Logical_Operator_out1[1 - 1];
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Selector' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Selector1' */
   State->Selector1_out1 = Logical_Operator_out1[2 - 1];
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Selector1' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Selector2' */
   State->Selector2_out1 = Logical_Operator_out1[3 - 1];
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Selector2' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails X' */
   if (State->Selector_out1) {
      State->Fails_X_enabled = GATRUE;
      Fails_X_comp (Sum_1_out1, Product4_out1, Add3_out1, State->Fails_X_M_yz);
   }
   else {
      State->Fails_X_enabled = GAFALSE;
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails X' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y' */
   if (State->Selector1_out1) {
      State->Fails_Y_enabled = GATRUE;
      Fails_Y_comp (Sum_1_out1, Product4_out1, Add3_out1, State->Fails_Y_M_yz);
   }
   else {
      State->Fails_Y_enabled = GAFALSE;
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Y' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z' */
   if (State->Selector2_out1) {
      State->Fails_Z_enabled = GATRUE;
      Fails_Z_comp (Sum_1_out1, Product4_out1, Add3_out1, State->Fails_Z_M_xy);
   }
   else {
      State->Fails_Z_enabled = GAFALSE;
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Fails Z' */

   /* Block 'Step/control/If Fail Recalculate/1 Fail/Sum' */
   /* Block 'Step/control/If Fail Recalculate/1 Fail/M_xyz' */
   for (i = 0; i <= 2; i++) {
      M_xyz[i] = State->Fails_X_M_yz[i] + State->Fails_Y_M_yz[i] + State->Fails_Z_M_xy[i];
   }
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/M_xyz' */
   /* End Block 'Step/control/If Fail Recalculate/1 Fail/Sum' */

}
/*  @EOF  */
