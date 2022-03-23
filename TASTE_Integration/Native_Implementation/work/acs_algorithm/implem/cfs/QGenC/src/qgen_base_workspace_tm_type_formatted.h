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

#ifndef QGEN_BASE_WORKSPACE_TM_TYPE_FORMATTED_H
#define QGEN_BASE_WORKSPACE_TM_TYPE_FORMATTED_H
#include "qgen_types.h"
#include "qgen_base_workspace_tm_hello_formatted.h"
#include "qgen_base_workspace_tm_housekeeping_formatted.h"
#include "qgen_base_workspace_tm_mode_formatted.h"
#include "qgen_base_workspace_tm_error_formatted.h"

typedef struct {
   GAUINT8 choiceIdx;
   TM_Hello_Formatted hello;
   TM_Housekeeping_Formatted hk;
   TM_Mode_Formatted mode;
   TM_Error_Formatted err;
} TM_Type_Formatted;

#endif
/*  @EOF  */
