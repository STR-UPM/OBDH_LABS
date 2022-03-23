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

#ifndef Q_1_FAIL_STATES_H
#define Q_1_FAIL_STATES_H
#include "qgen_types.h"

typedef struct {
   GASINGLE Fails_X_M_yz[3];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails X/OutDataPort1 */

   GASINGLE Fails_Y_M_yz[3];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails Y/OutDataPort1 */

   GASINGLE Fails_Z_M_xy[3];
   /* Output from Step/control/If Fail Recalculate/1 Fail/Fails Z/OutDataPort1 */

   GABOOL Fails_X_enabled;
   GABOOL Fails_Y_enabled;
   GABOOL Fails_Z_enabled;
   GABOOL Selector_out1;
   /* Output from Step/control/If Fail Recalculate/1 Fail/Selector/OutDataPort1 */

   GABOOL Selector1_out1;
   /* Output from Step/control/If Fail Recalculate/1 Fail/Selector1/OutDataPort1 */

   GABOOL Selector2_out1;
   /* Output from Step/control/If Fail Recalculate/1 Fail/Selector2/OutDataPort1 */

} q_1_Fail_State;

#endif
/*  @EOF  */
