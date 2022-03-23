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

#ifndef QGEN_BASE_WORKSPACE_TM_HOUSEKEEPING_H
#define QGEN_BASE_WORKSPACE_TM_HOUSEKEEPING_H
#include "qgen_types.h"
#include "qgen_base_workspace_tm_housekeeping_contents.h"

typedef struct {
   GAUINT32 tm_timestamp;
   TM_Housekeeping_Contents tm_payload;
} TM_Housekeeping;

#endif
/*  @EOF  */
