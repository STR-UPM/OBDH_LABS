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

#ifndef QGEN_BASE_WORKSPACE_TM_HELLO_FORMATTED_H
#define QGEN_BASE_WORKSPACE_TM_HELLO_FORMATTED_H
#include "qgen_base_workspace_tm_hello_formatted_tm_timestamp.h"
#include "qgen_base_workspace_satellite_state_formatted.h"

typedef struct {
   TM_Hello_Formatted_tm_timestamp tm_timestamp;
   Satellite_State_Formatted tm_payload;
} TM_Hello_Formatted;

#endif
/*  @EOF  */
