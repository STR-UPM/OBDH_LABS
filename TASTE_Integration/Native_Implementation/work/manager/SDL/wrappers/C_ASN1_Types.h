#ifndef __C_DATAVIEW_UNIQ_H__
#define __C_DATAVIEW_UNIQ_H__

#if defined( __unix__ ) || defined( __MSP430__ )
#include <stdlib.h> /* for size_t */
#else
typedef unsigned size_t;
#endif

#ifndef STATIC
#define STATIC
#endif


#include "dataview-uniq.h" // Space certified compiler generated

#include "../../system_config.h" // Choose ASN.1 Types to use

#ifdef __NEED_T_UInt16_UPER
int Encode_UPER_T_UInt16(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_UInt16 *pSrc);
#endif

#ifdef __NEED_T_UInt16_ACN
int Encode_ACN_T_UInt16(void *pBuffer, size_t iMaxBufferSize, asn1SccT_UInt16 *pSrc);
#endif

#ifdef __NEED_T_UInt16_NATIVE
int Encode_NATIVE_T_UInt16(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_UInt16 *pSrc);
#endif

#ifdef __NEED_T_UInt16_UPER
int Decode_UPER_T_UInt16(asn1SccT_UInt16 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_UInt16_ACN
int Decode_ACN_T_UInt16(asn1SccT_UInt16 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_UInt16_NATIVE
int Decode_NATIVE_T_UInt16(asn1SccT_UInt16 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_UInt64_UPER
int Encode_UPER_T_UInt64(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_UInt64 *pSrc);
#endif

#ifdef __NEED_T_UInt64_ACN
int Encode_ACN_T_UInt64(void *pBuffer, size_t iMaxBufferSize, asn1SccT_UInt64 *pSrc);
#endif

#ifdef __NEED_T_UInt64_NATIVE
int Encode_NATIVE_T_UInt64(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_UInt64 *pSrc);
#endif

#ifdef __NEED_T_UInt64_UPER
int Decode_UPER_T_UInt64(asn1SccT_UInt64 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_UInt64_ACN
int Decode_ACN_T_UInt64(asn1SccT_UInt64 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_UInt64_NATIVE
int Decode_NATIVE_T_UInt64(asn1SccT_UInt64 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Float_UPER
int Encode_UPER_T_Float(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Float *pSrc);
#endif

#ifdef __NEED_T_Float_ACN
int Encode_ACN_T_Float(void *pBuffer, size_t iMaxBufferSize, asn1SccT_Float *pSrc);
#endif

#ifdef __NEED_T_Float_NATIVE
int Encode_NATIVE_T_Float(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Float *pSrc);
#endif

#ifdef __NEED_T_Float_UPER
int Decode_UPER_T_Float(asn1SccT_Float *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Float_ACN
int Decode_ACN_T_Float(asn1SccT_Float *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Float_NATIVE
int Decode_NATIVE_T_Float(asn1SccT_Float *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Mission_Time_UPER
int Encode_UPER_Mission_Time(void *pBuffer, size_t iMaxBufferSize, const asn1SccMission_Time *pSrc);
#endif

#ifdef __NEED_Mission_Time_ACN
int Encode_ACN_Mission_Time(void *pBuffer, size_t iMaxBufferSize, asn1SccMission_Time *pSrc);
#endif

#ifdef __NEED_Mission_Time_NATIVE
int Encode_NATIVE_Mission_Time(void *pBuffer, size_t iMaxBufferSize, const asn1SccMission_Time *pSrc);
#endif

#ifdef __NEED_Mission_Time_UPER
int Decode_UPER_Mission_Time(asn1SccMission_Time *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Mission_Time_ACN
int Decode_ACN_Mission_Time(asn1SccMission_Time *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Mission_Time_NATIVE
int Decode_NATIVE_Mission_Time(asn1SccMission_Time *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_B_b_T_UPER
int Encode_UPER_T_B_b_T(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_B_b_T *pSrc);
#endif

#ifdef __NEED_T_B_b_T_ACN
int Encode_ACN_T_B_b_T(void *pBuffer, size_t iMaxBufferSize, asn1SccT_B_b_T *pSrc);
#endif

#ifdef __NEED_T_B_b_T_NATIVE
int Encode_NATIVE_T_B_b_T(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_B_b_T *pSrc);
#endif

#ifdef __NEED_T_B_b_T_UPER
int Decode_UPER_T_B_b_T(asn1SccT_B_b_T *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_B_b_T_ACN
int Decode_ACN_T_B_b_T(asn1SccT_B_b_T *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_B_b_T_NATIVE
int Decode_NATIVE_T_B_b_T(asn1SccT_B_b_T *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Omega_UPER
int Encode_UPER_T_Omega(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Omega *pSrc);
#endif

#ifdef __NEED_T_Omega_ACN
int Encode_ACN_T_Omega(void *pBuffer, size_t iMaxBufferSize, asn1SccT_Omega *pSrc);
#endif

#ifdef __NEED_T_Omega_NATIVE
int Encode_NATIVE_T_Omega(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Omega *pSrc);
#endif

#ifdef __NEED_T_Omega_UPER
int Decode_UPER_T_Omega(asn1SccT_Omega *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Omega_ACN
int Decode_ACN_T_Omega(asn1SccT_Omega *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Omega_NATIVE
int Decode_NATIVE_T_Omega(asn1SccT_Omega *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_MT_Working_UPER
int Encode_UPER_T_MT_Working(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_MT_Working *pSrc);
#endif

#ifdef __NEED_T_MT_Working_ACN
int Encode_ACN_T_MT_Working(void *pBuffer, size_t iMaxBufferSize, asn1SccT_MT_Working *pSrc);
#endif

#ifdef __NEED_T_MT_Working_NATIVE
int Encode_NATIVE_T_MT_Working(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_MT_Working *pSrc);
#endif

#ifdef __NEED_T_MT_Working_UPER
int Decode_UPER_T_MT_Working(asn1SccT_MT_Working *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_MT_Working_ACN
int Decode_ACN_T_MT_Working(asn1SccT_MT_Working *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_MT_Working_NATIVE
int Decode_NATIVE_T_MT_Working(asn1SccT_MT_Working *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Control_UPER
int Encode_UPER_T_Control(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Control *pSrc);
#endif

#ifdef __NEED_T_Control_ACN
int Encode_ACN_T_Control(void *pBuffer, size_t iMaxBufferSize, asn1SccT_Control *pSrc);
#endif

#ifdef __NEED_T_Control_NATIVE
int Encode_NATIVE_T_Control(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Control *pSrc);
#endif

#ifdef __NEED_T_Control_UPER
int Decode_UPER_T_Control(asn1SccT_Control *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Control_ACN
int Decode_ACN_T_Control(asn1SccT_Control *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Control_NATIVE
int Decode_NATIVE_T_Control(asn1SccT_Control *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Analog_Data_UPER
int Encode_UPER_Analog_Data(void *pBuffer, size_t iMaxBufferSize, const asn1SccAnalog_Data *pSrc);
#endif

#ifdef __NEED_Analog_Data_ACN
int Encode_ACN_Analog_Data(void *pBuffer, size_t iMaxBufferSize, asn1SccAnalog_Data *pSrc);
#endif

#ifdef __NEED_Analog_Data_NATIVE
int Encode_NATIVE_Analog_Data(void *pBuffer, size_t iMaxBufferSize, const asn1SccAnalog_Data *pSrc);
#endif

#ifdef __NEED_Analog_Data_UPER
int Decode_UPER_Analog_Data(asn1SccAnalog_Data *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Analog_Data_ACN
int Decode_ACN_Analog_Data(asn1SccAnalog_Data *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Analog_Data_NATIVE
int Decode_NATIVE_Analog_Data(asn1SccAnalog_Data *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Analog_Data_Table_UPER
int Encode_UPER_Analog_Data_Table(void *pBuffer, size_t iMaxBufferSize, const asn1SccAnalog_Data_Table *pSrc);
#endif

#ifdef __NEED_Analog_Data_Table_ACN
int Encode_ACN_Analog_Data_Table(void *pBuffer, size_t iMaxBufferSize, asn1SccAnalog_Data_Table *pSrc);
#endif

#ifdef __NEED_Analog_Data_Table_NATIVE
int Encode_NATIVE_Analog_Data_Table(void *pBuffer, size_t iMaxBufferSize, const asn1SccAnalog_Data_Table *pSrc);
#endif

#ifdef __NEED_Analog_Data_Table_UPER
int Decode_UPER_Analog_Data_Table(asn1SccAnalog_Data_Table *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Analog_Data_Table_ACN
int Decode_ACN_Analog_Data_Table(asn1SccAnalog_Data_Table *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Analog_Data_Table_NATIVE
int Decode_NATIVE_Analog_Data_Table(asn1SccAnalog_Data_Table *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Satellite_State_UPER
int Encode_UPER_Satellite_State(void *pBuffer, size_t iMaxBufferSize, const asn1SccSatellite_State *pSrc);
#endif

#ifdef __NEED_Satellite_State_ACN
int Encode_ACN_Satellite_State(void *pBuffer, size_t iMaxBufferSize, asn1SccSatellite_State *pSrc);
#endif

#ifdef __NEED_Satellite_State_NATIVE
int Encode_NATIVE_Satellite_State(void *pBuffer, size_t iMaxBufferSize, const asn1SccSatellite_State *pSrc);
#endif

#ifdef __NEED_Satellite_State_UPER
int Decode_UPER_Satellite_State(asn1SccSatellite_State *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Satellite_State_ACN
int Decode_ACN_Satellite_State(asn1SccSatellite_State *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Satellite_State_NATIVE
int Decode_NATIVE_Satellite_State(asn1SccSatellite_State *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Operating_Mode_UPER
int Encode_UPER_Operating_Mode(void *pBuffer, size_t iMaxBufferSize, const asn1SccOperating_Mode *pSrc);
#endif

#ifdef __NEED_Operating_Mode_ACN
int Encode_ACN_Operating_Mode(void *pBuffer, size_t iMaxBufferSize, asn1SccOperating_Mode *pSrc);
#endif

#ifdef __NEED_Operating_Mode_NATIVE
int Encode_NATIVE_Operating_Mode(void *pBuffer, size_t iMaxBufferSize, const asn1SccOperating_Mode *pSrc);
#endif

#ifdef __NEED_Operating_Mode_UPER
int Decode_UPER_Operating_Mode(asn1SccOperating_Mode *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Operating_Mode_ACN
int Decode_ACN_Operating_Mode(asn1SccOperating_Mode *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_Operating_Mode_NATIVE
int Decode_NATIVE_Operating_Mode(asn1SccOperating_Mode *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TC_Type_UPER
int Encode_UPER_TC_Type(void *pBuffer, size_t iMaxBufferSize, const asn1SccTC_Type *pSrc);
#endif

#ifdef __NEED_TC_Type_ACN
int Encode_ACN_TC_Type(void *pBuffer, size_t iMaxBufferSize, asn1SccTC_Type *pSrc);
#endif

#ifdef __NEED_TC_Type_NATIVE
int Encode_NATIVE_TC_Type(void *pBuffer, size_t iMaxBufferSize, const asn1SccTC_Type *pSrc);
#endif

#ifdef __NEED_TC_Type_UPER
int Decode_UPER_TC_Type(asn1SccTC_Type *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TC_Type_ACN
int Decode_ACN_TC_Type(asn1SccTC_Type *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TC_Type_NATIVE
int Decode_NATIVE_TC_Type(asn1SccTC_Type *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Hello_Contents_UPER
int Encode_UPER_TM_Hello_Contents(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Hello_Contents *pSrc);
#endif

#ifdef __NEED_TM_Hello_Contents_ACN
int Encode_ACN_TM_Hello_Contents(void *pBuffer, size_t iMaxBufferSize, asn1SccTM_Hello_Contents *pSrc);
#endif

#ifdef __NEED_TM_Hello_Contents_NATIVE
int Encode_NATIVE_TM_Hello_Contents(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Hello_Contents *pSrc);
#endif

#ifdef __NEED_TM_Hello_Contents_UPER
int Decode_UPER_TM_Hello_Contents(asn1SccTM_Hello_Contents *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Hello_Contents_ACN
int Decode_ACN_TM_Hello_Contents(asn1SccTM_Hello_Contents *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Hello_Contents_NATIVE
int Decode_NATIVE_TM_Hello_Contents(asn1SccTM_Hello_Contents *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Hello_UPER
int Encode_UPER_TM_Hello(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Hello *pSrc);
#endif

#ifdef __NEED_TM_Hello_ACN
int Encode_ACN_TM_Hello(void *pBuffer, size_t iMaxBufferSize, asn1SccTM_Hello *pSrc);
#endif

#ifdef __NEED_TM_Hello_NATIVE
int Encode_NATIVE_TM_Hello(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Hello *pSrc);
#endif

#ifdef __NEED_TM_Hello_UPER
int Decode_UPER_TM_Hello(asn1SccTM_Hello *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Hello_ACN
int Decode_ACN_TM_Hello(asn1SccTM_Hello *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Hello_NATIVE
int Decode_NATIVE_TM_Hello(asn1SccTM_Hello *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Housekeeping_Contents_UPER
int Encode_UPER_TM_Housekeeping_Contents(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Housekeeping_Contents *pSrc);
#endif

#ifdef __NEED_TM_Housekeeping_Contents_ACN
int Encode_ACN_TM_Housekeeping_Contents(void *pBuffer, size_t iMaxBufferSize, asn1SccTM_Housekeeping_Contents *pSrc);
#endif

#ifdef __NEED_TM_Housekeeping_Contents_NATIVE
int Encode_NATIVE_TM_Housekeeping_Contents(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Housekeeping_Contents *pSrc);
#endif

#ifdef __NEED_TM_Housekeeping_Contents_UPER
int Decode_UPER_TM_Housekeeping_Contents(asn1SccTM_Housekeeping_Contents *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Housekeeping_Contents_ACN
int Decode_ACN_TM_Housekeeping_Contents(asn1SccTM_Housekeeping_Contents *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Housekeeping_Contents_NATIVE
int Decode_NATIVE_TM_Housekeeping_Contents(asn1SccTM_Housekeeping_Contents *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Housekeeping_UPER
int Encode_UPER_TM_Housekeeping(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Housekeeping *pSrc);
#endif

#ifdef __NEED_TM_Housekeeping_ACN
int Encode_ACN_TM_Housekeeping(void *pBuffer, size_t iMaxBufferSize, asn1SccTM_Housekeeping *pSrc);
#endif

#ifdef __NEED_TM_Housekeeping_NATIVE
int Encode_NATIVE_TM_Housekeeping(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Housekeeping *pSrc);
#endif

#ifdef __NEED_TM_Housekeeping_UPER
int Decode_UPER_TM_Housekeeping(asn1SccTM_Housekeeping *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Housekeeping_ACN
int Decode_ACN_TM_Housekeeping(asn1SccTM_Housekeeping *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Housekeeping_NATIVE
int Decode_NATIVE_TM_Housekeeping(asn1SccTM_Housekeeping *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Mode_Contents_UPER
int Encode_UPER_TM_Mode_Contents(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Mode_Contents *pSrc);
#endif

#ifdef __NEED_TM_Mode_Contents_ACN
int Encode_ACN_TM_Mode_Contents(void *pBuffer, size_t iMaxBufferSize, asn1SccTM_Mode_Contents *pSrc);
#endif

#ifdef __NEED_TM_Mode_Contents_NATIVE
int Encode_NATIVE_TM_Mode_Contents(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Mode_Contents *pSrc);
#endif

#ifdef __NEED_TM_Mode_Contents_UPER
int Decode_UPER_TM_Mode_Contents(asn1SccTM_Mode_Contents *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Mode_Contents_ACN
int Decode_ACN_TM_Mode_Contents(asn1SccTM_Mode_Contents *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Mode_Contents_NATIVE
int Decode_NATIVE_TM_Mode_Contents(asn1SccTM_Mode_Contents *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Mode_UPER
int Encode_UPER_TM_Mode(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Mode *pSrc);
#endif

#ifdef __NEED_TM_Mode_ACN
int Encode_ACN_TM_Mode(void *pBuffer, size_t iMaxBufferSize, asn1SccTM_Mode *pSrc);
#endif

#ifdef __NEED_TM_Mode_NATIVE
int Encode_NATIVE_TM_Mode(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Mode *pSrc);
#endif

#ifdef __NEED_TM_Mode_UPER
int Decode_UPER_TM_Mode(asn1SccTM_Mode *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Mode_ACN
int Decode_ACN_TM_Mode(asn1SccTM_Mode *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Mode_NATIVE
int Decode_NATIVE_TM_Mode(asn1SccTM_Mode *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Error_Contents_UPER
int Encode_UPER_TM_Error_Contents(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Error_Contents *pSrc);
#endif

#ifdef __NEED_TM_Error_Contents_ACN
int Encode_ACN_TM_Error_Contents(void *pBuffer, size_t iMaxBufferSize, asn1SccTM_Error_Contents *pSrc);
#endif

#ifdef __NEED_TM_Error_Contents_NATIVE
int Encode_NATIVE_TM_Error_Contents(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Error_Contents *pSrc);
#endif

#ifdef __NEED_TM_Error_Contents_UPER
int Decode_UPER_TM_Error_Contents(asn1SccTM_Error_Contents *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Error_Contents_ACN
int Decode_ACN_TM_Error_Contents(asn1SccTM_Error_Contents *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Error_Contents_NATIVE
int Decode_NATIVE_TM_Error_Contents(asn1SccTM_Error_Contents *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Error_UPER
int Encode_UPER_TM_Error(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Error *pSrc);
#endif

#ifdef __NEED_TM_Error_ACN
int Encode_ACN_TM_Error(void *pBuffer, size_t iMaxBufferSize, asn1SccTM_Error *pSrc);
#endif

#ifdef __NEED_TM_Error_NATIVE
int Encode_NATIVE_TM_Error(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Error *pSrc);
#endif

#ifdef __NEED_TM_Error_UPER
int Decode_UPER_TM_Error(asn1SccTM_Error *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Error_ACN
int Decode_ACN_TM_Error(asn1SccTM_Error *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Error_NATIVE
int Decode_NATIVE_TM_Error(asn1SccTM_Error *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Type_UPER
int Encode_UPER_TM_Type(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Type *pSrc);
#endif

#ifdef __NEED_TM_Type_ACN
int Encode_ACN_TM_Type(void *pBuffer, size_t iMaxBufferSize, asn1SccTM_Type *pSrc);
#endif

#ifdef __NEED_TM_Type_NATIVE
int Encode_NATIVE_TM_Type(void *pBuffer, size_t iMaxBufferSize, const asn1SccTM_Type *pSrc);
#endif

#ifdef __NEED_TM_Type_UPER
int Decode_UPER_TM_Type(asn1SccTM_Type *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Type_ACN
int Decode_ACN_TM_Type(asn1SccTM_Type *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_TM_Type_NATIVE
int Decode_NATIVE_TM_Type(asn1SccTM_Type *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Int32_UPER
int Encode_UPER_T_Int32(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Int32 *pSrc);
#endif

#ifdef __NEED_T_Int32_ACN
int Encode_ACN_T_Int32(void *pBuffer, size_t iMaxBufferSize, asn1SccT_Int32 *pSrc);
#endif

#ifdef __NEED_T_Int32_NATIVE
int Encode_NATIVE_T_Int32(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Int32 *pSrc);
#endif

#ifdef __NEED_T_Int32_UPER
int Decode_UPER_T_Int32(asn1SccT_Int32 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Int32_ACN
int Decode_ACN_T_Int32(asn1SccT_Int32 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Int32_NATIVE
int Decode_NATIVE_T_Int32(asn1SccT_Int32 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_UInt32_UPER
int Encode_UPER_T_UInt32(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_UInt32 *pSrc);
#endif

#ifdef __NEED_T_UInt32_ACN
int Encode_ACN_T_UInt32(void *pBuffer, size_t iMaxBufferSize, asn1SccT_UInt32 *pSrc);
#endif

#ifdef __NEED_T_UInt32_NATIVE
int Encode_NATIVE_T_UInt32(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_UInt32 *pSrc);
#endif

#ifdef __NEED_T_UInt32_UPER
int Decode_UPER_T_UInt32(asn1SccT_UInt32 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_UInt32_ACN
int Decode_ACN_T_UInt32(asn1SccT_UInt32 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_UInt32_NATIVE
int Decode_NATIVE_T_UInt32(asn1SccT_UInt32 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Int8_UPER
int Encode_UPER_T_Int8(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Int8 *pSrc);
#endif

#ifdef __NEED_T_Int8_ACN
int Encode_ACN_T_Int8(void *pBuffer, size_t iMaxBufferSize, asn1SccT_Int8 *pSrc);
#endif

#ifdef __NEED_T_Int8_NATIVE
int Encode_NATIVE_T_Int8(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Int8 *pSrc);
#endif

#ifdef __NEED_T_Int8_UPER
int Decode_UPER_T_Int8(asn1SccT_Int8 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Int8_ACN
int Decode_ACN_T_Int8(asn1SccT_Int8 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Int8_NATIVE
int Decode_NATIVE_T_Int8(asn1SccT_Int8 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_UInt8_UPER
int Encode_UPER_T_UInt8(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_UInt8 *pSrc);
#endif

#ifdef __NEED_T_UInt8_ACN
int Encode_ACN_T_UInt8(void *pBuffer, size_t iMaxBufferSize, asn1SccT_UInt8 *pSrc);
#endif

#ifdef __NEED_T_UInt8_NATIVE
int Encode_NATIVE_T_UInt8(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_UInt8 *pSrc);
#endif

#ifdef __NEED_T_UInt8_UPER
int Decode_UPER_T_UInt8(asn1SccT_UInt8 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_UInt8_ACN
int Decode_ACN_T_UInt8(asn1SccT_UInt8 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_UInt8_NATIVE
int Decode_NATIVE_T_UInt8(asn1SccT_UInt8 *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Boolean_UPER
int Encode_UPER_T_Boolean(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Boolean *pSrc);
#endif

#ifdef __NEED_T_Boolean_ACN
int Encode_ACN_T_Boolean(void *pBuffer, size_t iMaxBufferSize, asn1SccT_Boolean *pSrc);
#endif

#ifdef __NEED_T_Boolean_NATIVE
int Encode_NATIVE_T_Boolean(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Boolean *pSrc);
#endif

#ifdef __NEED_T_Boolean_UPER
int Decode_UPER_T_Boolean(asn1SccT_Boolean *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Boolean_ACN
int Decode_ACN_T_Boolean(asn1SccT_Boolean *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Boolean_NATIVE
int Decode_NATIVE_T_Boolean(asn1SccT_Boolean *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Null_Record_UPER
int Encode_UPER_T_Null_Record(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Null_Record *pSrc);
#endif

#ifdef __NEED_T_Null_Record_ACN
int Encode_ACN_T_Null_Record(void *pBuffer, size_t iMaxBufferSize, asn1SccT_Null_Record *pSrc);
#endif

#ifdef __NEED_T_Null_Record_NATIVE
int Encode_NATIVE_T_Null_Record(void *pBuffer, size_t iMaxBufferSize, const asn1SccT_Null_Record *pSrc);
#endif

#ifdef __NEED_T_Null_Record_UPER
int Decode_UPER_T_Null_Record(asn1SccT_Null_Record *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Null_Record_ACN
int Decode_ACN_T_Null_Record(asn1SccT_Null_Record *pDst, void *pBuffer, size_t iBufferSize);
#endif

#ifdef __NEED_T_Null_Record_NATIVE
int Decode_NATIVE_T_Null_Record(asn1SccT_Null_Record *pDst, void *pBuffer, size_t iBufferSize);
#endif


#endif
