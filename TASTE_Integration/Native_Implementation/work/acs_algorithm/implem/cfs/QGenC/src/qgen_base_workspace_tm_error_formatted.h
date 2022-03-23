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

#ifndef QGEN_BASE_WORKSPACE_TM_ERROR_FORMATTED_H
#define QGEN_BASE_WORKSPACE_TM_ERROR_FORMATTED_H
#include "qgen_base_workspace_tm_error_formatted_tm_timestamp.h"
#include "qgen_base_workspace_tm_error_contents.h"

typedef struct {
   TM_Error_Formatted_tm_timestamp tm_timestamp;
   TM_Error_Contents tm_payload;
} TM_Error_Formatted;

#endif
/*  @EOF  */
