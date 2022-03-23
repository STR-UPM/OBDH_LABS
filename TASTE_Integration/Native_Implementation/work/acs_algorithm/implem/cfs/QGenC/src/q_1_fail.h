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

#ifndef Q_1_FAIL_H
#define Q_1_FAIL_H
#include "q_1_fail_states.h"
#include "qgen_types.h"
#include "fails_x.h"
#include "fails_y.h"
#include "fails_z.h"
#include "qgen_sqrt_gasingle.h"
#include "qgen_pow_gasingle.h"

extern void q_1_Fail_initStates
  (q_1_Fail_State* const State);
extern void q_1_Fail_initOutputs
  (GASINGLE M_xyz[3],
   q_1_Fail_State* const State);
extern void q_1_Fail_comp
  (GASINGLE const Fail[3],
   GASINGLE const M[3],
   GASINGLE const B[3],
   GASINGLE M_xyz[3],
   q_1_Fail_State* const State);

#endif
/*  @EOF  */
