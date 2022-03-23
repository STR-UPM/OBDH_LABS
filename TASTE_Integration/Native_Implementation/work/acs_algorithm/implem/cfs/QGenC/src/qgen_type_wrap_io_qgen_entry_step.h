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

#ifndef QGEN_TYPE_WRAP_IO_QGEN_ENTRY_STEP_H
#define QGEN_TYPE_WRAP_IO_QGEN_ENTRY_STEP_H
#include "qgen_base_workspace_t_b_b_t.h"
#include "qgen_base_workspace_t_omega.h"
#include "qgen_base_workspace_t_float.h"
#include "qgen_base_workspace_t_mt_working.h"
#include "qgen_base_workspace_t_control.h"

typedef struct {
   T_B_b_T BBT;
   T_Omega Omega;
   T_Float K_PB;
   T_Float K_PE;
   T_Float M_M;
   T_MT_Working MT_Working;
} qgen_entry_Step_comp_Input;
typedef struct {
   T_Control Control;
} qgen_entry_Step_comp_Output;

#endif
/*  @EOF  */
