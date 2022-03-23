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

#include "qgen_entry_step.h"

Step_State Step_memory;
void qgen_entry_Step_init (void)
{
   Step_initStates (&Step_memory);
   Step_initOutputs (&Step_memory);
}
void qgen_entry_Step_comp
  (qgen_entry_Step_comp_Input const* const Input,
   qgen_entry_Step_comp_Output* const Output)
{
   Step_comp (&Input->BBT, &Input->Omega, Input->K_PB, Input->K_PE, Input->M_M, &Input->MT_Working, &Output->Control, &Step_memory);
   Step_up (&Step_memory);
}
/*  @EOF  */
