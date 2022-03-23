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

#ifndef QGEN_ENTRY_STEP_H
#define QGEN_ENTRY_STEP_H
#include "step.h"
#include "qgen_type_wrap_io_qgen_entry_step.h"
#include "step_states.h"

extern Step_State Step_memory;
extern void qgen_entry_Step_init (void);
extern void qgen_entry_Step_comp
  (qgen_entry_Step_comp_Input const* const Input,
   qgen_entry_Step_comp_Output* const Output);

#endif
/*  @EOF  */
