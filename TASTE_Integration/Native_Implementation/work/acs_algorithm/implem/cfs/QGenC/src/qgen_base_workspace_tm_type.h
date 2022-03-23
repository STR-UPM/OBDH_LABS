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

#ifndef QGEN_BASE_WORKSPACE_TM_TYPE_H
#define QGEN_BASE_WORKSPACE_TM_TYPE_H
#include "qgen_types.h"
#include "qgen_base_workspace_tm_hello.h"
#include "qgen_base_workspace_tm_housekeeping.h"
#include "qgen_base_workspace_tm_mode.h"
#include "qgen_base_workspace_tm_error.h"

typedef struct {
   GAUINT8 choiceIdx;
   TM_Hello hello;
   TM_Housekeeping hk;
   TM_Mode mode;
   TM_Error err;
} TM_Type;

#endif
/*  @EOF  */
