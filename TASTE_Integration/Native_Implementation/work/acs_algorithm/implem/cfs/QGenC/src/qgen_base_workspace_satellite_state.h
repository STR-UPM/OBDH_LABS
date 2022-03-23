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

#ifndef QGEN_BASE_WORKSPACE_SATELLITE_STATE_H
#define QGEN_BASE_WORKSPACE_SATELLITE_STATE_H
#include "qgen_types.h"
#include "qgen_base_workspace_analog_data_table.h"

typedef struct {
   GAUINT32 timestamp;
   Analog_Data_Table data;
} Satellite_State;

#endif
/*  @EOF  */
