#ifndef __GETSET_H__
#define __GETSET_H__

#include "dataview-uniq.h"

size_t GetStreamCurrentLength(BitStream *pBitStrm);
byte *GetBitstreamBuffer(BitStream *pBitStrm);
byte GetBufferByte(byte *p, size_t off);
void SetBufferByte(byte *p, size_t off, byte b);
void ResetStream(BitStream *pStrm);
BitStream *CreateStream(size_t bufferSize);
void DestroyStream(BitStream *pBitStrm);


/* INTEGER */
asn1SccSint T_UInt16__Get(T_UInt16* root);

/* INTEGER */
void T_UInt16__Set(T_UInt16* root, asn1SccSint value);

/* INTEGER */
asn1SccSint T_UInt64__Get(T_UInt64* root);

/* INTEGER */
void T_UInt64__Set(T_UInt64* root, asn1SccSint value);

/* REAL */
double T_Float__Get(T_Float* root);

/* REAL */
void T_Float__Set(T_Float* root, double value);

/* INTEGER */
asn1SccSint Mission_Time__Get(Mission_Time* root);

/* INTEGER */
void Mission_Time__Set(Mission_Time* root, asn1SccSint value);

/* SEQUENCEOF/SETOF */
long T_B_b_T__GetLength(T_B_b_T* root);

/* SEQUENCEOF/SETOF */
void T_B_b_T__SetLength(T_B_b_T* root, long value);

/* REAL */
double T_B_b_T__iDx_Get(T_B_b_T* root, int iDx);

/* REAL */
void T_B_b_T__iDx_Set(T_B_b_T* root, int iDx, double value);

/* SEQUENCEOF/SETOF */
long T_Omega__GetLength(T_Omega* root);

/* SEQUENCEOF/SETOF */
void T_Omega__SetLength(T_Omega* root, long value);

/* REAL */
double T_Omega__iDx_Get(T_Omega* root, int iDx);

/* REAL */
void T_Omega__iDx_Set(T_Omega* root, int iDx, double value);

/* SEQUENCEOF/SETOF */
long T_MT_Working__GetLength(T_MT_Working* root);

/* SEQUENCEOF/SETOF */
void T_MT_Working__SetLength(T_MT_Working* root, long value);

/* REAL */
double T_MT_Working__iDx_Get(T_MT_Working* root, int iDx);

/* REAL */
void T_MT_Working__iDx_Set(T_MT_Working* root, int iDx, double value);

/* SEQUENCEOF/SETOF */
long T_Control__GetLength(T_Control* root);

/* SEQUENCEOF/SETOF */
void T_Control__SetLength(T_Control* root, long value);

/* REAL */
double T_Control__iDx_Get(T_Control* root, int iDx);

/* REAL */
void T_Control__iDx_Set(T_Control* root, int iDx, double value);

/* INTEGER */
asn1SccSint Analog_Data__Get(Analog_Data* root);

/* INTEGER */
void Analog_Data__Set(Analog_Data* root, asn1SccSint value);

/* INTEGER */
asn1SccSint Analog_Data_Table__obc_t_Get(Analog_Data_Table* root);

/* INTEGER */
void Analog_Data_Table__obc_t_Set(Analog_Data_Table* root, asn1SccSint value);

/* INTEGER */
asn1SccSint Analog_Data_Table__obc_v_Get(Analog_Data_Table* root);

/* INTEGER */
void Analog_Data_Table__obc_v_Set(Analog_Data_Table* root, asn1SccSint value);

/* INTEGER */
asn1SccSint Satellite_State__timestamp_Get(Satellite_State* root);

/* INTEGER */
void Satellite_State__timestamp_Set(Satellite_State* root, asn1SccSint value);

/* Field data selector */
Analog_Data_Table* Satellite_State__data_Get(Satellite_State* root);

/* INTEGER */
asn1SccSint Satellite_State__data_obc_t_Get(Satellite_State* root);

/* INTEGER */
void Satellite_State__data_obc_t_Set(Satellite_State* root, asn1SccSint value);

/* INTEGER */
asn1SccSint Satellite_State__data_obc_v_Get(Satellite_State* root);

/* INTEGER */
void Satellite_State__data_obc_v_Set(Satellite_State* root, asn1SccSint value);

/* ENUMERATED */
int Operating_Mode__Get(Operating_Mode* root);

/* ENUMERATED */
void Operating_Mode__Set(Operating_Mode* root, int value);

/* ENUMERATED */
int TC_Type__Get(TC_Type* root);

/* ENUMERATED */
void TC_Type__Set(TC_Type* root, int value);

/* INTEGER */
asn1SccSint TM_Hello__tm_timestamp_Get(TM_Hello* root);

/* INTEGER */
void TM_Hello__tm_timestamp_Set(TM_Hello* root, asn1SccSint value);

/* Field tm_payload selector */
Satellite_State* TM_Hello__tm_payload_Get(TM_Hello* root);

/* INTEGER */
asn1SccSint TM_Hello__tm_payload_timestamp_Get(TM_Hello* root);

/* INTEGER */
void TM_Hello__tm_payload_timestamp_Set(TM_Hello* root, asn1SccSint value);

/* Field data selector */
Analog_Data_Table* TM_Hello__tm_payload_data_Get(TM_Hello* root);

/* INTEGER */
asn1SccSint TM_Hello__tm_payload_data_obc_t_Get(TM_Hello* root);

/* INTEGER */
void TM_Hello__tm_payload_data_obc_t_Set(TM_Hello* root, asn1SccSint value);

/* INTEGER */
asn1SccSint TM_Hello__tm_payload_data_obc_v_Get(TM_Hello* root);

/* INTEGER */
void TM_Hello__tm_payload_data_obc_v_Set(TM_Hello* root, asn1SccSint value);

/* SEQUENCEOF/SETOF */
long TM_Housekeeping_Contents__GetLength(TM_Housekeeping_Contents* root);

/* SEQUENCEOF/SETOF */
void TM_Housekeeping_Contents__SetLength(TM_Housekeeping_Contents* root, long value);

/* INTEGER */
asn1SccSint TM_Housekeeping_Contents__iDx_timestamp_Get(TM_Housekeeping_Contents* root, int iDx);

/* INTEGER */
void TM_Housekeeping_Contents__iDx_timestamp_Set(TM_Housekeeping_Contents* root, int iDx, asn1SccSint value);

/* Field data selector */
Analog_Data_Table* TM_Housekeeping_Contents__iDx_data_Get(TM_Housekeeping_Contents* root, int iDx);

/* INTEGER */
asn1SccSint TM_Housekeeping_Contents__iDx_data_obc_t_Get(TM_Housekeeping_Contents* root, int iDx);

/* INTEGER */
void TM_Housekeeping_Contents__iDx_data_obc_t_Set(TM_Housekeeping_Contents* root, int iDx, asn1SccSint value);

/* INTEGER */
asn1SccSint TM_Housekeeping_Contents__iDx_data_obc_v_Get(TM_Housekeeping_Contents* root, int iDx);

/* INTEGER */
void TM_Housekeeping_Contents__iDx_data_obc_v_Set(TM_Housekeeping_Contents* root, int iDx, asn1SccSint value);

/* INTEGER */
asn1SccSint TM_Housekeeping__tm_timestamp_Get(TM_Housekeeping* root);

/* INTEGER */
void TM_Housekeeping__tm_timestamp_Set(TM_Housekeeping* root, asn1SccSint value);

/* Field tm_payload selector */
TM_Housekeeping_Contents TM_Housekeeping__tm_payload_Get(TM_Housekeeping* root);

/* Field tm_payload selector */
void TM_Housekeeping__tm_payload_Set(TM_Housekeeping* root, TM_Housekeeping_Contents value);

/* SEQUENCEOF/SETOF */
long TM_Housekeeping__tm_payload_GetLength(TM_Housekeeping* root);

/* SEQUENCEOF/SETOF */
void TM_Housekeeping__tm_payload_SetLength(TM_Housekeeping* root, long value);

/* INTEGER */
asn1SccSint TM_Housekeeping__tm_payload_iDx_timestamp_Get(TM_Housekeeping* root, int iDx);

/* INTEGER */
void TM_Housekeeping__tm_payload_iDx_timestamp_Set(TM_Housekeeping* root, int iDx, asn1SccSint value);

/* Field data selector */
Analog_Data_Table* TM_Housekeeping__tm_payload_iDx_data_Get(TM_Housekeeping* root, int iDx);

/* INTEGER */
asn1SccSint TM_Housekeeping__tm_payload_iDx_data_obc_t_Get(TM_Housekeeping* root, int iDx);

/* INTEGER */
void TM_Housekeeping__tm_payload_iDx_data_obc_t_Set(TM_Housekeeping* root, int iDx, asn1SccSint value);

/* INTEGER */
asn1SccSint TM_Housekeeping__tm_payload_iDx_data_obc_v_Get(TM_Housekeeping* root, int iDx);

/* INTEGER */
void TM_Housekeeping__tm_payload_iDx_data_obc_v_Set(TM_Housekeeping* root, int iDx, asn1SccSint value);

/* INTEGER */
asn1SccSint TM_Mode__tm_timestamp_Get(TM_Mode* root);

/* INTEGER */
void TM_Mode__tm_timestamp_Set(TM_Mode* root, asn1SccSint value);

/* ENUMERATED */
int TM_Mode__tm_payload_Get(TM_Mode* root);

/* ENUMERATED */
void TM_Mode__tm_payload_Set(TM_Mode* root, int value);

/* OCTETSTRING */
long TM_Error_Contents__GetLength(TM_Error_Contents* root);

/* OCTETSTRING */
void TM_Error_Contents__SetLength(TM_Error_Contents* root, long value);

/* OCTETSTRING_bytes */
byte TM_Error_Contents__iDx_Get(TM_Error_Contents* root, int iDx);

/* OCTETSTRING_bytes */
void TM_Error_Contents__iDx_Set(TM_Error_Contents* root, int iDx, byte value);

/* INTEGER */
asn1SccSint TM_Error__tm_timestamp_Get(TM_Error* root);

/* INTEGER */
void TM_Error__tm_timestamp_Set(TM_Error* root, asn1SccSint value);

/* OCTETSTRING */
long TM_Error__tm_payload_GetLength(TM_Error* root);

/* OCTETSTRING */
void TM_Error__tm_payload_SetLength(TM_Error* root, long value);

/* OCTETSTRING_bytes */
byte TM_Error__tm_payload_iDx_Get(TM_Error* root, int iDx);

/* OCTETSTRING_bytes */
void TM_Error__tm_payload_iDx_Set(TM_Error* root, int iDx, byte value);

/* CHOICE selector */
int TM_Type__kind_Get(TM_Type* root);

/* CHOICE selector */
void TM_Type__kind_Set(TM_Type* root, int value);

/* Field hello selector */
TM_Hello* TM_Type__hello_Get(TM_Type* root);

/* INTEGER */
asn1SccSint TM_Type__hello_tm_timestamp_Get(TM_Type* root);

/* INTEGER */
void TM_Type__hello_tm_timestamp_Set(TM_Type* root, asn1SccSint value);

/* Field tm_payload selector */
Satellite_State* TM_Type__hello_tm_payload_Get(TM_Type* root);

/* INTEGER */
asn1SccSint TM_Type__hello_tm_payload_timestamp_Get(TM_Type* root);

/* INTEGER */
void TM_Type__hello_tm_payload_timestamp_Set(TM_Type* root, asn1SccSint value);

/* Field data selector */
Analog_Data_Table* TM_Type__hello_tm_payload_data_Get(TM_Type* root);

/* INTEGER */
asn1SccSint TM_Type__hello_tm_payload_data_obc_t_Get(TM_Type* root);

/* INTEGER */
void TM_Type__hello_tm_payload_data_obc_t_Set(TM_Type* root, asn1SccSint value);

/* INTEGER */
asn1SccSint TM_Type__hello_tm_payload_data_obc_v_Get(TM_Type* root);

/* INTEGER */
void TM_Type__hello_tm_payload_data_obc_v_Set(TM_Type* root, asn1SccSint value);

/* Field hk selector */
TM_Housekeeping* TM_Type__hk_Get(TM_Type* root);

/* INTEGER */
asn1SccSint TM_Type__hk_tm_timestamp_Get(TM_Type* root);

/* INTEGER */
void TM_Type__hk_tm_timestamp_Set(TM_Type* root, asn1SccSint value);

/* Field tm_payload selector */
TM_Housekeeping_Contents TM_Type__hk_tm_payload_Get(TM_Type* root);

/* Field tm_payload selector */
void TM_Type__hk_tm_payload_Set(TM_Type* root, TM_Housekeeping_Contents value);

/* SEQUENCEOF/SETOF */
long TM_Type__hk_tm_payload_GetLength(TM_Type* root);

/* SEQUENCEOF/SETOF */
void TM_Type__hk_tm_payload_SetLength(TM_Type* root, long value);

/* INTEGER */
asn1SccSint TM_Type__hk_tm_payload_iDx_timestamp_Get(TM_Type* root, int iDx);

/* INTEGER */
void TM_Type__hk_tm_payload_iDx_timestamp_Set(TM_Type* root, int iDx, asn1SccSint value);

/* Field data selector */
Analog_Data_Table* TM_Type__hk_tm_payload_iDx_data_Get(TM_Type* root, int iDx);

/* INTEGER */
asn1SccSint TM_Type__hk_tm_payload_iDx_data_obc_t_Get(TM_Type* root, int iDx);

/* INTEGER */
void TM_Type__hk_tm_payload_iDx_data_obc_t_Set(TM_Type* root, int iDx, asn1SccSint value);

/* INTEGER */
asn1SccSint TM_Type__hk_tm_payload_iDx_data_obc_v_Get(TM_Type* root, int iDx);

/* INTEGER */
void TM_Type__hk_tm_payload_iDx_data_obc_v_Set(TM_Type* root, int iDx, asn1SccSint value);

/* Field mode selector */
TM_Mode* TM_Type__mode_Get(TM_Type* root);

/* INTEGER */
asn1SccSint TM_Type__mode_tm_timestamp_Get(TM_Type* root);

/* INTEGER */
void TM_Type__mode_tm_timestamp_Set(TM_Type* root, asn1SccSint value);

/* ENUMERATED */
int TM_Type__mode_tm_payload_Get(TM_Type* root);

/* ENUMERATED */
void TM_Type__mode_tm_payload_Set(TM_Type* root, int value);

/* Field err selector */
TM_Error* TM_Type__err_Get(TM_Type* root);

/* INTEGER */
asn1SccSint TM_Type__err_tm_timestamp_Get(TM_Type* root);

/* INTEGER */
void TM_Type__err_tm_timestamp_Set(TM_Type* root, asn1SccSint value);

/* OCTETSTRING */
long TM_Type__err_tm_payload_GetLength(TM_Type* root);

/* OCTETSTRING */
void TM_Type__err_tm_payload_SetLength(TM_Type* root, long value);

/* OCTETSTRING_bytes */
byte TM_Type__err_tm_payload_iDx_Get(TM_Type* root, int iDx);

/* OCTETSTRING_bytes */
void TM_Type__err_tm_payload_iDx_Set(TM_Type* root, int iDx, byte value);

/* INTEGER */
asn1SccSint T_Int32__Get(T_Int32* root);

/* INTEGER */
void T_Int32__Set(T_Int32* root, asn1SccSint value);

/* INTEGER */
asn1SccSint T_UInt32__Get(T_UInt32* root);

/* INTEGER */
void T_UInt32__Set(T_UInt32* root, asn1SccSint value);

/* INTEGER */
asn1SccSint T_Int8__Get(T_Int8* root);

/* INTEGER */
void T_Int8__Set(T_Int8* root, asn1SccSint value);

/* INTEGER */
asn1SccSint T_UInt8__Get(T_UInt8* root);

/* INTEGER */
void T_UInt8__Set(T_UInt8* root, asn1SccSint value);

/* BOOLEAN */
flag T_Boolean__Get(T_Boolean* root);

/* BOOLEAN */
void T_Boolean__Set(T_Boolean* root, flag value);

/* Helper functions for NATIVE encodings */

void SetDataFor_T_UInt16(void *dest, void *src);
byte* MovePtrBySizeOf_T_UInt16(byte *pData);
byte* CreateInstanceOf_T_UInt16(void);
void DestroyInstanceOf_T_UInt16(byte *pData);

void SetDataFor_T_UInt64(void *dest, void *src);
byte* MovePtrBySizeOf_T_UInt64(byte *pData);
byte* CreateInstanceOf_T_UInt64(void);
void DestroyInstanceOf_T_UInt64(byte *pData);

void SetDataFor_T_Float(void *dest, void *src);
byte* MovePtrBySizeOf_T_Float(byte *pData);
byte* CreateInstanceOf_T_Float(void);
void DestroyInstanceOf_T_Float(byte *pData);

void SetDataFor_Mission_Time(void *dest, void *src);
byte* MovePtrBySizeOf_Mission_Time(byte *pData);
byte* CreateInstanceOf_Mission_Time(void);
void DestroyInstanceOf_Mission_Time(byte *pData);

void SetDataFor_T_B_b_T(void *dest, void *src);
byte* MovePtrBySizeOf_T_B_b_T(byte *pData);
byte* CreateInstanceOf_T_B_b_T(void);
void DestroyInstanceOf_T_B_b_T(byte *pData);

void SetDataFor_T_Omega(void *dest, void *src);
byte* MovePtrBySizeOf_T_Omega(byte *pData);
byte* CreateInstanceOf_T_Omega(void);
void DestroyInstanceOf_T_Omega(byte *pData);

void SetDataFor_T_MT_Working(void *dest, void *src);
byte* MovePtrBySizeOf_T_MT_Working(byte *pData);
byte* CreateInstanceOf_T_MT_Working(void);
void DestroyInstanceOf_T_MT_Working(byte *pData);

void SetDataFor_T_Control(void *dest, void *src);
byte* MovePtrBySizeOf_T_Control(byte *pData);
byte* CreateInstanceOf_T_Control(void);
void DestroyInstanceOf_T_Control(byte *pData);

void SetDataFor_Analog_Data(void *dest, void *src);
byte* MovePtrBySizeOf_Analog_Data(byte *pData);
byte* CreateInstanceOf_Analog_Data(void);
void DestroyInstanceOf_Analog_Data(byte *pData);

void SetDataFor_Analog_Data_Table(void *dest, void *src);
byte* MovePtrBySizeOf_Analog_Data_Table(byte *pData);
byte* CreateInstanceOf_Analog_Data_Table(void);
void DestroyInstanceOf_Analog_Data_Table(byte *pData);

void SetDataFor_Satellite_State(void *dest, void *src);
byte* MovePtrBySizeOf_Satellite_State(byte *pData);
byte* CreateInstanceOf_Satellite_State(void);
void DestroyInstanceOf_Satellite_State(byte *pData);

void SetDataFor_Operating_Mode(void *dest, void *src);
byte* MovePtrBySizeOf_Operating_Mode(byte *pData);
byte* CreateInstanceOf_Operating_Mode(void);
void DestroyInstanceOf_Operating_Mode(byte *pData);

void SetDataFor_TC_Type(void *dest, void *src);
byte* MovePtrBySizeOf_TC_Type(byte *pData);
byte* CreateInstanceOf_TC_Type(void);
void DestroyInstanceOf_TC_Type(byte *pData);

void SetDataFor_TM_Hello(void *dest, void *src);
byte* MovePtrBySizeOf_TM_Hello(byte *pData);
byte* CreateInstanceOf_TM_Hello(void);
void DestroyInstanceOf_TM_Hello(byte *pData);

void SetDataFor_TM_Housekeeping_Contents(void *dest, void *src);
byte* MovePtrBySizeOf_TM_Housekeeping_Contents(byte *pData);
byte* CreateInstanceOf_TM_Housekeeping_Contents(void);
void DestroyInstanceOf_TM_Housekeeping_Contents(byte *pData);

void SetDataFor_TM_Housekeeping(void *dest, void *src);
byte* MovePtrBySizeOf_TM_Housekeeping(byte *pData);
byte* CreateInstanceOf_TM_Housekeeping(void);
void DestroyInstanceOf_TM_Housekeeping(byte *pData);

void SetDataFor_TM_Mode(void *dest, void *src);
byte* MovePtrBySizeOf_TM_Mode(byte *pData);
byte* CreateInstanceOf_TM_Mode(void);
void DestroyInstanceOf_TM_Mode(byte *pData);

void SetDataFor_TM_Error_Contents(void *dest, void *src);
byte* MovePtrBySizeOf_TM_Error_Contents(byte *pData);
byte* CreateInstanceOf_TM_Error_Contents(void);
void DestroyInstanceOf_TM_Error_Contents(byte *pData);

void SetDataFor_TM_Error(void *dest, void *src);
byte* MovePtrBySizeOf_TM_Error(byte *pData);
byte* CreateInstanceOf_TM_Error(void);
void DestroyInstanceOf_TM_Error(byte *pData);

void SetDataFor_TM_Type(void *dest, void *src);
byte* MovePtrBySizeOf_TM_Type(byte *pData);
byte* CreateInstanceOf_TM_Type(void);
void DestroyInstanceOf_TM_Type(byte *pData);

void SetDataFor_T_Int32(void *dest, void *src);
byte* MovePtrBySizeOf_T_Int32(byte *pData);
byte* CreateInstanceOf_T_Int32(void);
void DestroyInstanceOf_T_Int32(byte *pData);

void SetDataFor_T_UInt32(void *dest, void *src);
byte* MovePtrBySizeOf_T_UInt32(byte *pData);
byte* CreateInstanceOf_T_UInt32(void);
void DestroyInstanceOf_T_UInt32(byte *pData);

void SetDataFor_T_Int8(void *dest, void *src);
byte* MovePtrBySizeOf_T_Int8(byte *pData);
byte* CreateInstanceOf_T_Int8(void);
void DestroyInstanceOf_T_Int8(byte *pData);

void SetDataFor_T_UInt8(void *dest, void *src);
byte* MovePtrBySizeOf_T_UInt8(byte *pData);
byte* CreateInstanceOf_T_UInt8(void);
void DestroyInstanceOf_T_UInt8(byte *pData);

void SetDataFor_T_Boolean(void *dest, void *src);
byte* MovePtrBySizeOf_T_Boolean(byte *pData);
byte* CreateInstanceOf_T_Boolean(void);
void DestroyInstanceOf_T_Boolean(byte *pData);

void SetDataFor_T_Null_Record(void *dest, void *src);
byte* MovePtrBySizeOf_T_Null_Record(byte *pData);
byte* CreateInstanceOf_T_Null_Record(void);
void DestroyInstanceOf_T_Null_Record(byte *pData);

void SetDataFor_int(void *dest, void *src);
byte* MovePtrBySizeOf_int(byte *pData);
byte* CreateInstanceOf_int(void);
void DestroyInstanceOf_int(byte *pData);


#endif
