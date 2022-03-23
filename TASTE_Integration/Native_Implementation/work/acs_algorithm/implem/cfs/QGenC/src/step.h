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

#ifndef STEP_H
#define STEP_H
#include "step_states.h"
#include "qgen_types.h"
#include "q_1_fail.h"
#include "noone_fails1.h"
#include "q_2_fails.h"
#include "qgen_base_workspace_t_b_b_t.h"
#include "qgen_base_workspace_t_omega.h"
#include "qgen_base_workspace_t_float.h"
#include "qgen_base_workspace_t_mt_working.h"
#include "qgen_base_workspace_t_control.h"
#include "qgen_safe_div_gareal.h"
#include "qgen_pow_gasingle.h"
#include "qgen_round_gasingle.h"
#include "qgen_abs_gasingle.h"

extern void Step_initStates
  (Step_State* const State);
extern void Step_initOutputs
  (Step_State* const State);
extern void Step_comp
  (T_B_b_T const* const BBT,
   T_Omega const* const Omega,
   T_Float const K_PB,
   T_Float const K_PE,
   T_Float const M_M,
   T_MT_Working const* const MT_Working,
   T_Control* const Control,
   Step_State* const State);
extern void Step_up
  (Step_State* const State);

#endif
/*  @EOF  */
