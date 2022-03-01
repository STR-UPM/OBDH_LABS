#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include "dataview-uniq_getset.h"

size_t GetStreamCurrentLength(BitStream *pBitStrm) {
    return pBitStrm->currentByte + ((pBitStrm->currentBit+7)/8);
}

byte *GetBitstreamBuffer(BitStream *pBitStrm) {
    return pBitStrm->buf;
}

byte GetBufferByte(byte *p, size_t off) {
    assert(p);
    return p[off];
}

void SetBufferByte(byte *p, size_t off, byte b) {
    assert(p);
    p[off] = b;
}

void ResetStream(BitStream *pStrm) {
    assert(pStrm);
    assert(pStrm->count >= 0);
    pStrm->currentByte = 0;
    pStrm->currentBit = 0;
}

BitStream *CreateStream(size_t bufferSize) {
    BitStream *pBitStrm = malloc(sizeof(BitStream));
    assert(pBitStrm);
    unsigned char* buf = malloc(bufferSize);
    assert(buf);
    memset(buf, 0x0, bufferSize);
    BitStream_Init(pBitStrm, buf, bufferSize);
    return pBitStrm;
}

void DestroyStream(BitStream *pBitStrm) {
    assert(pBitStrm);
    assert(pBitStrm->buf);
    free(pBitStrm->buf);
    free(pBitStrm);
}


/* INTEGER */
asn1SccSint T_UInt16__Get(T_UInt16* root)
{
    return (*root);
}

/* INTEGER */
void T_UInt16__Set(T_UInt16* root, asn1SccSint value)
{
    (*root) = value;
}

/* INTEGER */
asn1SccSint T_UInt64__Get(T_UInt64* root)
{
    return (*root);
}

/* INTEGER */
void T_UInt64__Set(T_UInt64* root, asn1SccSint value)
{
    (*root) = value;
}

/* REAL */
double T_Float__Get(T_Float* root)
{
    return (*root);
}

/* REAL */
void T_Float__Set(T_Float* root, double value)
{
    (*root) = value;
}

/* INTEGER */
asn1SccSint Mission_Time__Get(Mission_Time* root)
{
    return (*root);
}

/* INTEGER */
void Mission_Time__Set(Mission_Time* root, asn1SccSint value)
{
    (*root) = value;
}

/* SEQUENCEOF/SETOF */
long T_B_b_T__GetLength(T_B_b_T* root)
{
    return 15;
}

/* SEQUENCEOF/SETOF */
void T_B_b_T__SetLength(T_B_b_T* root, long value)
{
    fprintf(stderr, "WARNING: setting length of fixed-length sequence\n");
}

/* REAL */
double T_B_b_T__iDx_Get(T_B_b_T* root, int iDx)
{
    return (*root).arr[iDx];
}

/* REAL */
void T_B_b_T__iDx_Set(T_B_b_T* root, int iDx, double value)
{
    (*root).arr[iDx] = value;
}

/* SEQUENCEOF/SETOF */
long T_Omega__GetLength(T_Omega* root)
{
    return 3;
}

/* SEQUENCEOF/SETOF */
void T_Omega__SetLength(T_Omega* root, long value)
{
    fprintf(stderr, "WARNING: setting length of fixed-length sequence\n");
}

/* REAL */
double T_Omega__iDx_Get(T_Omega* root, int iDx)
{
    return (*root).arr[iDx];
}

/* REAL */
void T_Omega__iDx_Set(T_Omega* root, int iDx, double value)
{
    (*root).arr[iDx] = value;
}

/* SEQUENCEOF/SETOF */
long T_MT_Working__GetLength(T_MT_Working* root)
{
    return 3;
}

/* SEQUENCEOF/SETOF */
void T_MT_Working__SetLength(T_MT_Working* root, long value)
{
    fprintf(stderr, "WARNING: setting length of fixed-length sequence\n");
}

/* REAL */
double T_MT_Working__iDx_Get(T_MT_Working* root, int iDx)
{
    return (*root).arr[iDx];
}

/* REAL */
void T_MT_Working__iDx_Set(T_MT_Working* root, int iDx, double value)
{
    (*root).arr[iDx] = value;
}

/* SEQUENCEOF/SETOF */
long T_Control__GetLength(T_Control* root)
{
    return 3;
}

/* SEQUENCEOF/SETOF */
void T_Control__SetLength(T_Control* root, long value)
{
    fprintf(stderr, "WARNING: setting length of fixed-length sequence\n");
}

/* REAL */
double T_Control__iDx_Get(T_Control* root, int iDx)
{
    return (*root).arr[iDx];
}

/* REAL */
void T_Control__iDx_Set(T_Control* root, int iDx, double value)
{
    (*root).arr[iDx] = value;
}

/* INTEGER */
asn1SccSint Analog_Data__Get(Analog_Data* root)
{
    return (*root);
}

/* INTEGER */
void Analog_Data__Set(Analog_Data* root, asn1SccSint value)
{
    (*root) = value;
}

/* INTEGER */
asn1SccSint Analog_Data_Table__obc_t_Get(Analog_Data_Table* root)
{
    return (*root).obc_t;
}

/* INTEGER */
void Analog_Data_Table__obc_t_Set(Analog_Data_Table* root, asn1SccSint value)
{
    (*root).obc_t = value;
}

/* INTEGER */
asn1SccSint Analog_Data_Table__obc_v_Get(Analog_Data_Table* root)
{
    return (*root).obc_v;
}

/* INTEGER */
void Analog_Data_Table__obc_v_Set(Analog_Data_Table* root, asn1SccSint value)
{
    (*root).obc_v = value;
}

/* INTEGER */
asn1SccSint Satellite_State__timestamp_Get(Satellite_State* root)
{
    return (*root).timestamp;
}

/* INTEGER */
void Satellite_State__timestamp_Set(Satellite_State* root, asn1SccSint value)
{
    (*root).timestamp = value;
}

/* Field data selector */
Analog_Data_Table* Satellite_State__data_Get(Satellite_State* root)
{
    return &(*root).data;
}

/* INTEGER */
asn1SccSint Satellite_State__data_obc_t_Get(Satellite_State* root)
{
    return (*root).data.obc_t;
}

/* INTEGER */
void Satellite_State__data_obc_t_Set(Satellite_State* root, asn1SccSint value)
{
    (*root).data.obc_t = value;
}

/* INTEGER */
asn1SccSint Satellite_State__data_obc_v_Get(Satellite_State* root)
{
    return (*root).data.obc_v;
}

/* INTEGER */
void Satellite_State__data_obc_v_Set(Satellite_State* root, asn1SccSint value)
{
    (*root).data.obc_v = value;
}

/* ENUMERATED */
int Operating_Mode__Get(Operating_Mode* root)
{
    return (*root);
}

/* ENUMERATED */
void Operating_Mode__Set(Operating_Mode* root, int value)
{
    (*root) = value;
}

/* ENUMERATED */
int TC_Type__Get(TC_Type* root)
{
    return (*root);
}

/* ENUMERATED */
void TC_Type__Set(TC_Type* root, int value)
{
    (*root) = value;
}

/* INTEGER */
asn1SccSint TM_Hello__tm_timestamp_Get(TM_Hello* root)
{
    return (*root).tm_timestamp;
}

/* INTEGER */
void TM_Hello__tm_timestamp_Set(TM_Hello* root, asn1SccSint value)
{
    (*root).tm_timestamp = value;
}

/* Field tm_payload selector */
Satellite_State* TM_Hello__tm_payload_Get(TM_Hello* root)
{
    return &(*root).tm_payload;
}

/* INTEGER */
asn1SccSint TM_Hello__tm_payload_timestamp_Get(TM_Hello* root)
{
    return (*root).tm_payload.timestamp;
}

/* INTEGER */
void TM_Hello__tm_payload_timestamp_Set(TM_Hello* root, asn1SccSint value)
{
    (*root).tm_payload.timestamp = value;
}

/* Field data selector */
Analog_Data_Table* TM_Hello__tm_payload_data_Get(TM_Hello* root)
{
    return &(*root).tm_payload.data;
}

/* INTEGER */
asn1SccSint TM_Hello__tm_payload_data_obc_t_Get(TM_Hello* root)
{
    return (*root).tm_payload.data.obc_t;
}

/* INTEGER */
void TM_Hello__tm_payload_data_obc_t_Set(TM_Hello* root, asn1SccSint value)
{
    (*root).tm_payload.data.obc_t = value;
}

/* INTEGER */
asn1SccSint TM_Hello__tm_payload_data_obc_v_Get(TM_Hello* root)
{
    return (*root).tm_payload.data.obc_v;
}

/* INTEGER */
void TM_Hello__tm_payload_data_obc_v_Set(TM_Hello* root, asn1SccSint value)
{
    (*root).tm_payload.data.obc_v = value;
}

/* SEQUENCEOF/SETOF */
long TM_Housekeeping_Contents__GetLength(TM_Housekeeping_Contents* root)
{
    return 4;
}

/* SEQUENCEOF/SETOF */
void TM_Housekeeping_Contents__SetLength(TM_Housekeeping_Contents* root, long value)
{
    fprintf(stderr, "WARNING: setting length of fixed-length sequence\n");
}

/* INTEGER */
asn1SccSint TM_Housekeeping_Contents__iDx_timestamp_Get(TM_Housekeeping_Contents* root, int iDx)
{
    return (*root).arr[iDx].timestamp;
}

/* INTEGER */
void TM_Housekeeping_Contents__iDx_timestamp_Set(TM_Housekeeping_Contents* root, int iDx, asn1SccSint value)
{
    (*root).arr[iDx].timestamp = value;
}

/* Field data selector */
Analog_Data_Table* TM_Housekeeping_Contents__iDx_data_Get(TM_Housekeeping_Contents* root, int iDx)
{
    return &(*root).arr[iDx].data;
}

/* INTEGER */
asn1SccSint TM_Housekeeping_Contents__iDx_data_obc_t_Get(TM_Housekeeping_Contents* root, int iDx)
{
    return (*root).arr[iDx].data.obc_t;
}

/* INTEGER */
void TM_Housekeeping_Contents__iDx_data_obc_t_Set(TM_Housekeeping_Contents* root, int iDx, asn1SccSint value)
{
    (*root).arr[iDx].data.obc_t = value;
}

/* INTEGER */
asn1SccSint TM_Housekeeping_Contents__iDx_data_obc_v_Get(TM_Housekeeping_Contents* root, int iDx)
{
    return (*root).arr[iDx].data.obc_v;
}

/* INTEGER */
void TM_Housekeeping_Contents__iDx_data_obc_v_Set(TM_Housekeeping_Contents* root, int iDx, asn1SccSint value)
{
    (*root).arr[iDx].data.obc_v = value;
}

/* INTEGER */
asn1SccSint TM_Housekeeping__tm_timestamp_Get(TM_Housekeeping* root)
{
    return (*root).tm_timestamp;
}

/* INTEGER */
void TM_Housekeeping__tm_timestamp_Set(TM_Housekeeping* root, asn1SccSint value)
{
    (*root).tm_timestamp = value;
}

/* Field tm_payload selector */
TM_Housekeeping_Contents TM_Housekeeping__tm_payload_Get(TM_Housekeeping* root)
{
    return (*root).tm_payload;
}

/* Field tm_payload selector */
void TM_Housekeeping__tm_payload_Set(TM_Housekeeping* root, TM_Housekeeping_Contents value)
{
    (*root).tm_payload = value;
}

/* SEQUENCEOF/SETOF */
long TM_Housekeeping__tm_payload_GetLength(TM_Housekeeping* root)
{
    return 4;
}

/* SEQUENCEOF/SETOF */
void TM_Housekeeping__tm_payload_SetLength(TM_Housekeeping* root, long value)
{
    fprintf(stderr, "WARNING: setting length of fixed-length sequence\n");
}

/* INTEGER */
asn1SccSint TM_Housekeeping__tm_payload_iDx_timestamp_Get(TM_Housekeeping* root, int iDx)
{
    return (*root).tm_payload.arr[iDx].timestamp;
}

/* INTEGER */
void TM_Housekeeping__tm_payload_iDx_timestamp_Set(TM_Housekeeping* root, int iDx, asn1SccSint value)
{
    (*root).tm_payload.arr[iDx].timestamp = value;
}

/* Field data selector */
Analog_Data_Table* TM_Housekeeping__tm_payload_iDx_data_Get(TM_Housekeeping* root, int iDx)
{
    return &(*root).tm_payload.arr[iDx].data;
}

/* INTEGER */
asn1SccSint TM_Housekeeping__tm_payload_iDx_data_obc_t_Get(TM_Housekeeping* root, int iDx)
{
    return (*root).tm_payload.arr[iDx].data.obc_t;
}

/* INTEGER */
void TM_Housekeeping__tm_payload_iDx_data_obc_t_Set(TM_Housekeeping* root, int iDx, asn1SccSint value)
{
    (*root).tm_payload.arr[iDx].data.obc_t = value;
}

/* INTEGER */
asn1SccSint TM_Housekeeping__tm_payload_iDx_data_obc_v_Get(TM_Housekeeping* root, int iDx)
{
    return (*root).tm_payload.arr[iDx].data.obc_v;
}

/* INTEGER */
void TM_Housekeeping__tm_payload_iDx_data_obc_v_Set(TM_Housekeeping* root, int iDx, asn1SccSint value)
{
    (*root).tm_payload.arr[iDx].data.obc_v = value;
}

/* INTEGER */
asn1SccSint TM_Mode__tm_timestamp_Get(TM_Mode* root)
{
    return (*root).tm_timestamp;
}

/* INTEGER */
void TM_Mode__tm_timestamp_Set(TM_Mode* root, asn1SccSint value)
{
    (*root).tm_timestamp = value;
}

/* ENUMERATED */
int TM_Mode__tm_payload_Get(TM_Mode* root)
{
    return (*root).tm_payload;
}

/* ENUMERATED */
void TM_Mode__tm_payload_Set(TM_Mode* root, int value)
{
    (*root).tm_payload = value;
}

/* OCTETSTRING */
long TM_Error_Contents__GetLength(TM_Error_Contents* root)
{
    return (*root).nCount;
}

/* OCTETSTRING */
void TM_Error_Contents__SetLength(TM_Error_Contents* root, long value)
{
    (*root).nCount = value;
}

/* OCTETSTRING_bytes */
byte TM_Error_Contents__iDx_Get(TM_Error_Contents* root, int iDx)
{
    return (*root).arr[iDx];
}

/* OCTETSTRING_bytes */
void TM_Error_Contents__iDx_Set(TM_Error_Contents* root, int iDx, byte value)
{
    (*root).arr[iDx] = value;
}

/* INTEGER */
asn1SccSint TM_Error__tm_timestamp_Get(TM_Error* root)
{
    return (*root).tm_timestamp;
}

/* INTEGER */
void TM_Error__tm_timestamp_Set(TM_Error* root, asn1SccSint value)
{
    (*root).tm_timestamp = value;
}

/* OCTETSTRING */
long TM_Error__tm_payload_GetLength(TM_Error* root)
{
    return (*root).tm_payload.nCount;
}

/* OCTETSTRING */
void TM_Error__tm_payload_SetLength(TM_Error* root, long value)
{
    (*root).tm_payload.nCount = value;
}

/* OCTETSTRING_bytes */
byte TM_Error__tm_payload_iDx_Get(TM_Error* root, int iDx)
{
    return (*root).tm_payload.arr[iDx];
}

/* OCTETSTRING_bytes */
void TM_Error__tm_payload_iDx_Set(TM_Error* root, int iDx, byte value)
{
    (*root).tm_payload.arr[iDx] = value;
}

/* CHOICE selector */
int TM_Type__kind_Get(TM_Type* root)
{
    return (*root).kind;
}

/* CHOICE selector */
void TM_Type__kind_Set(TM_Type* root, int value)
{
    (*root).kind = value;
}

/* Field hello selector */
TM_Hello* TM_Type__hello_Get(TM_Type* root)
{
    return &(*root).u.hello;
}

/* INTEGER */
asn1SccSint TM_Type__hello_tm_timestamp_Get(TM_Type* root)
{
    return (*root).u.hello.tm_timestamp;
}

/* INTEGER */
void TM_Type__hello_tm_timestamp_Set(TM_Type* root, asn1SccSint value)
{
    (*root).u.hello.tm_timestamp = value;
}

/* Field tm_payload selector */
Satellite_State* TM_Type__hello_tm_payload_Get(TM_Type* root)
{
    return &(*root).u.hello.tm_payload;
}

/* INTEGER */
asn1SccSint TM_Type__hello_tm_payload_timestamp_Get(TM_Type* root)
{
    return (*root).u.hello.tm_payload.timestamp;
}

/* INTEGER */
void TM_Type__hello_tm_payload_timestamp_Set(TM_Type* root, asn1SccSint value)
{
    (*root).u.hello.tm_payload.timestamp = value;
}

/* Field data selector */
Analog_Data_Table* TM_Type__hello_tm_payload_data_Get(TM_Type* root)
{
    return &(*root).u.hello.tm_payload.data;
}

/* INTEGER */
asn1SccSint TM_Type__hello_tm_payload_data_obc_t_Get(TM_Type* root)
{
    return (*root).u.hello.tm_payload.data.obc_t;
}

/* INTEGER */
void TM_Type__hello_tm_payload_data_obc_t_Set(TM_Type* root, asn1SccSint value)
{
    (*root).u.hello.tm_payload.data.obc_t = value;
}

/* INTEGER */
asn1SccSint TM_Type__hello_tm_payload_data_obc_v_Get(TM_Type* root)
{
    return (*root).u.hello.tm_payload.data.obc_v;
}

/* INTEGER */
void TM_Type__hello_tm_payload_data_obc_v_Set(TM_Type* root, asn1SccSint value)
{
    (*root).u.hello.tm_payload.data.obc_v = value;
}

/* Field hk selector */
TM_Housekeeping* TM_Type__hk_Get(TM_Type* root)
{
    return &(*root).u.hk;
}

/* INTEGER */
asn1SccSint TM_Type__hk_tm_timestamp_Get(TM_Type* root)
{
    return (*root).u.hk.tm_timestamp;
}

/* INTEGER */
void TM_Type__hk_tm_timestamp_Set(TM_Type* root, asn1SccSint value)
{
    (*root).u.hk.tm_timestamp = value;
}

/* Field tm_payload selector */
TM_Housekeeping_Contents TM_Type__hk_tm_payload_Get(TM_Type* root)
{
    return (*root).u.hk.tm_payload;
}

/* Field tm_payload selector */
void TM_Type__hk_tm_payload_Set(TM_Type* root, TM_Housekeeping_Contents value)
{
    (*root).u.hk.tm_payload = value;
}

/* SEQUENCEOF/SETOF */
long TM_Type__hk_tm_payload_GetLength(TM_Type* root)
{
    return 4;
}

/* SEQUENCEOF/SETOF */
void TM_Type__hk_tm_payload_SetLength(TM_Type* root, long value)
{
    fprintf(stderr, "WARNING: setting length of fixed-length sequence\n");
}

/* INTEGER */
asn1SccSint TM_Type__hk_tm_payload_iDx_timestamp_Get(TM_Type* root, int iDx)
{
    return (*root).u.hk.tm_payload.arr[iDx].timestamp;
}

/* INTEGER */
void TM_Type__hk_tm_payload_iDx_timestamp_Set(TM_Type* root, int iDx, asn1SccSint value)
{
    (*root).u.hk.tm_payload.arr[iDx].timestamp = value;
}

/* Field data selector */
Analog_Data_Table* TM_Type__hk_tm_payload_iDx_data_Get(TM_Type* root, int iDx)
{
    return &(*root).u.hk.tm_payload.arr[iDx].data;
}

/* INTEGER */
asn1SccSint TM_Type__hk_tm_payload_iDx_data_obc_t_Get(TM_Type* root, int iDx)
{
    return (*root).u.hk.tm_payload.arr[iDx].data.obc_t;
}

/* INTEGER */
void TM_Type__hk_tm_payload_iDx_data_obc_t_Set(TM_Type* root, int iDx, asn1SccSint value)
{
    (*root).u.hk.tm_payload.arr[iDx].data.obc_t = value;
}

/* INTEGER */
asn1SccSint TM_Type__hk_tm_payload_iDx_data_obc_v_Get(TM_Type* root, int iDx)
{
    return (*root).u.hk.tm_payload.arr[iDx].data.obc_v;
}

/* INTEGER */
void TM_Type__hk_tm_payload_iDx_data_obc_v_Set(TM_Type* root, int iDx, asn1SccSint value)
{
    (*root).u.hk.tm_payload.arr[iDx].data.obc_v = value;
}

/* Field mode selector */
TM_Mode* TM_Type__mode_Get(TM_Type* root)
{
    return &(*root).u.mode;
}

/* INTEGER */
asn1SccSint TM_Type__mode_tm_timestamp_Get(TM_Type* root)
{
    return (*root).u.mode.tm_timestamp;
}

/* INTEGER */
void TM_Type__mode_tm_timestamp_Set(TM_Type* root, asn1SccSint value)
{
    (*root).u.mode.tm_timestamp = value;
}

/* ENUMERATED */
int TM_Type__mode_tm_payload_Get(TM_Type* root)
{
    return (*root).u.mode.tm_payload;
}

/* ENUMERATED */
void TM_Type__mode_tm_payload_Set(TM_Type* root, int value)
{
    (*root).u.mode.tm_payload = value;
}

/* Field err selector */
TM_Error* TM_Type__err_Get(TM_Type* root)
{
    return &(*root).u.err;
}

/* INTEGER */
asn1SccSint TM_Type__err_tm_timestamp_Get(TM_Type* root)
{
    return (*root).u.err.tm_timestamp;
}

/* INTEGER */
void TM_Type__err_tm_timestamp_Set(TM_Type* root, asn1SccSint value)
{
    (*root).u.err.tm_timestamp = value;
}

/* OCTETSTRING */
long TM_Type__err_tm_payload_GetLength(TM_Type* root)
{
    return (*root).u.err.tm_payload.nCount;
}

/* OCTETSTRING */
void TM_Type__err_tm_payload_SetLength(TM_Type* root, long value)
{
    (*root).u.err.tm_payload.nCount = value;
}

/* OCTETSTRING_bytes */
byte TM_Type__err_tm_payload_iDx_Get(TM_Type* root, int iDx)
{
    return (*root).u.err.tm_payload.arr[iDx];
}

/* OCTETSTRING_bytes */
void TM_Type__err_tm_payload_iDx_Set(TM_Type* root, int iDx, byte value)
{
    (*root).u.err.tm_payload.arr[iDx] = value;
}

/* INTEGER */
asn1SccSint T_Int32__Get(T_Int32* root)
{
    return (*root);
}

/* INTEGER */
void T_Int32__Set(T_Int32* root, asn1SccSint value)
{
    (*root) = value;
}

/* INTEGER */
asn1SccSint T_UInt32__Get(T_UInt32* root)
{
    return (*root);
}

/* INTEGER */
void T_UInt32__Set(T_UInt32* root, asn1SccSint value)
{
    (*root) = value;
}

/* INTEGER */
asn1SccSint T_Int8__Get(T_Int8* root)
{
    return (*root);
}

/* INTEGER */
void T_Int8__Set(T_Int8* root, asn1SccSint value)
{
    (*root) = value;
}

/* INTEGER */
asn1SccSint T_UInt8__Get(T_UInt8* root)
{
    return (*root);
}

/* INTEGER */
void T_UInt8__Set(T_UInt8* root, asn1SccSint value)
{
    (*root) = value;
}

/* BOOLEAN */
flag T_Boolean__Get(T_Boolean* root)
{
    return (*root);
}

/* BOOLEAN */
void T_Boolean__Set(T_Boolean* root, flag value)
{
    (*root) = value;
}

/* Helper functions for NATIVE encodings */

void SetDataFor_T_UInt16(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_UInt16));
}

byte* MovePtrBySizeOf_T_UInt16(byte *pData)
{
    return pData + sizeof(T_UInt16);
}

byte* CreateInstanceOf_T_UInt16() {
    T_UInt16 *p = (T_UInt16*)malloc(sizeof(T_UInt16));
    T_UInt16_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_UInt16(byte *pData) {
    free(pData);
}

void SetDataFor_T_UInt64(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_UInt64));
}

byte* MovePtrBySizeOf_T_UInt64(byte *pData)
{
    return pData + sizeof(T_UInt64);
}

byte* CreateInstanceOf_T_UInt64() {
    T_UInt64 *p = (T_UInt64*)malloc(sizeof(T_UInt64));
    T_UInt64_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_UInt64(byte *pData) {
    free(pData);
}

void SetDataFor_T_Float(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_Float));
}

byte* MovePtrBySizeOf_T_Float(byte *pData)
{
    return pData + sizeof(T_Float);
}

byte* CreateInstanceOf_T_Float() {
    T_Float *p = (T_Float*)malloc(sizeof(T_Float));
    T_Float_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_Float(byte *pData) {
    free(pData);
}

void SetDataFor_Mission_Time(void *dest, void *src)
{
    memcpy(dest, src, sizeof(Mission_Time));
}

byte* MovePtrBySizeOf_Mission_Time(byte *pData)
{
    return pData + sizeof(Mission_Time);
}

byte* CreateInstanceOf_Mission_Time() {
    Mission_Time *p = (Mission_Time*)malloc(sizeof(Mission_Time));
    Mission_Time_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_Mission_Time(byte *pData) {
    free(pData);
}

void SetDataFor_T_B_b_T(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_B_b_T));
}

byte* MovePtrBySizeOf_T_B_b_T(byte *pData)
{
    return pData + sizeof(T_B_b_T);
}

byte* CreateInstanceOf_T_B_b_T() {
    T_B_b_T *p = (T_B_b_T*)malloc(sizeof(T_B_b_T));
    T_B_b_T_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_B_b_T(byte *pData) {
    free(pData);
}

void SetDataFor_T_Omega(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_Omega));
}

byte* MovePtrBySizeOf_T_Omega(byte *pData)
{
    return pData + sizeof(T_Omega);
}

byte* CreateInstanceOf_T_Omega() {
    T_Omega *p = (T_Omega*)malloc(sizeof(T_Omega));
    T_Omega_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_Omega(byte *pData) {
    free(pData);
}

void SetDataFor_T_MT_Working(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_MT_Working));
}

byte* MovePtrBySizeOf_T_MT_Working(byte *pData)
{
    return pData + sizeof(T_MT_Working);
}

byte* CreateInstanceOf_T_MT_Working() {
    T_MT_Working *p = (T_MT_Working*)malloc(sizeof(T_MT_Working));
    T_MT_Working_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_MT_Working(byte *pData) {
    free(pData);
}

void SetDataFor_T_Control(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_Control));
}

byte* MovePtrBySizeOf_T_Control(byte *pData)
{
    return pData + sizeof(T_Control);
}

byte* CreateInstanceOf_T_Control() {
    T_Control *p = (T_Control*)malloc(sizeof(T_Control));
    T_Control_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_Control(byte *pData) {
    free(pData);
}

void SetDataFor_Analog_Data(void *dest, void *src)
{
    memcpy(dest, src, sizeof(Analog_Data));
}

byte* MovePtrBySizeOf_Analog_Data(byte *pData)
{
    return pData + sizeof(Analog_Data);
}

byte* CreateInstanceOf_Analog_Data() {
    Analog_Data *p = (Analog_Data*)malloc(sizeof(Analog_Data));
    Analog_Data_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_Analog_Data(byte *pData) {
    free(pData);
}

void SetDataFor_Analog_Data_Table(void *dest, void *src)
{
    memcpy(dest, src, sizeof(Analog_Data_Table));
}

byte* MovePtrBySizeOf_Analog_Data_Table(byte *pData)
{
    return pData + sizeof(Analog_Data_Table);
}

byte* CreateInstanceOf_Analog_Data_Table() {
    Analog_Data_Table *p = (Analog_Data_Table*)malloc(sizeof(Analog_Data_Table));
    Analog_Data_Table_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_Analog_Data_Table(byte *pData) {
    free(pData);
}

void SetDataFor_Satellite_State(void *dest, void *src)
{
    memcpy(dest, src, sizeof(Satellite_State));
}

byte* MovePtrBySizeOf_Satellite_State(byte *pData)
{
    return pData + sizeof(Satellite_State);
}

byte* CreateInstanceOf_Satellite_State() {
    Satellite_State *p = (Satellite_State*)malloc(sizeof(Satellite_State));
    Satellite_State_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_Satellite_State(byte *pData) {
    free(pData);
}

void SetDataFor_Operating_Mode(void *dest, void *src)
{
    memcpy(dest, src, sizeof(Operating_Mode));
}

byte* MovePtrBySizeOf_Operating_Mode(byte *pData)
{
    return pData + sizeof(Operating_Mode);
}

byte* CreateInstanceOf_Operating_Mode() {
    Operating_Mode *p = (Operating_Mode*)malloc(sizeof(Operating_Mode));
    Operating_Mode_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_Operating_Mode(byte *pData) {
    free(pData);
}

void SetDataFor_TC_Type(void *dest, void *src)
{
    memcpy(dest, src, sizeof(TC_Type));
}

byte* MovePtrBySizeOf_TC_Type(byte *pData)
{
    return pData + sizeof(TC_Type);
}

byte* CreateInstanceOf_TC_Type() {
    TC_Type *p = (TC_Type*)malloc(sizeof(TC_Type));
    TC_Type_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_TC_Type(byte *pData) {
    free(pData);
}

void SetDataFor_TM_Hello(void *dest, void *src)
{
    memcpy(dest, src, sizeof(TM_Hello));
}

byte* MovePtrBySizeOf_TM_Hello(byte *pData)
{
    return pData + sizeof(TM_Hello);
}

byte* CreateInstanceOf_TM_Hello() {
    TM_Hello *p = (TM_Hello*)malloc(sizeof(TM_Hello));
    TM_Hello_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_TM_Hello(byte *pData) {
    free(pData);
}

void SetDataFor_TM_Housekeeping_Contents(void *dest, void *src)
{
    memcpy(dest, src, sizeof(TM_Housekeeping_Contents));
}

byte* MovePtrBySizeOf_TM_Housekeeping_Contents(byte *pData)
{
    return pData + sizeof(TM_Housekeeping_Contents);
}

byte* CreateInstanceOf_TM_Housekeeping_Contents() {
    TM_Housekeeping_Contents *p = (TM_Housekeeping_Contents*)malloc(sizeof(TM_Housekeeping_Contents));
    TM_Housekeeping_Contents_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_TM_Housekeeping_Contents(byte *pData) {
    free(pData);
}

void SetDataFor_TM_Housekeeping(void *dest, void *src)
{
    memcpy(dest, src, sizeof(TM_Housekeeping));
}

byte* MovePtrBySizeOf_TM_Housekeeping(byte *pData)
{
    return pData + sizeof(TM_Housekeeping);
}

byte* CreateInstanceOf_TM_Housekeeping() {
    TM_Housekeeping *p = (TM_Housekeeping*)malloc(sizeof(TM_Housekeeping));
    TM_Housekeeping_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_TM_Housekeeping(byte *pData) {
    free(pData);
}

void SetDataFor_TM_Mode(void *dest, void *src)
{
    memcpy(dest, src, sizeof(TM_Mode));
}

byte* MovePtrBySizeOf_TM_Mode(byte *pData)
{
    return pData + sizeof(TM_Mode);
}

byte* CreateInstanceOf_TM_Mode() {
    TM_Mode *p = (TM_Mode*)malloc(sizeof(TM_Mode));
    TM_Mode_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_TM_Mode(byte *pData) {
    free(pData);
}

void SetDataFor_TM_Error_Contents(void *dest, void *src)
{
    memcpy(dest, src, sizeof(TM_Error_Contents));
}

byte* MovePtrBySizeOf_TM_Error_Contents(byte *pData)
{
    return pData + sizeof(TM_Error_Contents);
}

byte* CreateInstanceOf_TM_Error_Contents() {
    TM_Error_Contents *p = (TM_Error_Contents*)malloc(sizeof(TM_Error_Contents));
    TM_Error_Contents_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_TM_Error_Contents(byte *pData) {
    free(pData);
}

void SetDataFor_TM_Error(void *dest, void *src)
{
    memcpy(dest, src, sizeof(TM_Error));
}

byte* MovePtrBySizeOf_TM_Error(byte *pData)
{
    return pData + sizeof(TM_Error);
}

byte* CreateInstanceOf_TM_Error() {
    TM_Error *p = (TM_Error*)malloc(sizeof(TM_Error));
    TM_Error_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_TM_Error(byte *pData) {
    free(pData);
}

void SetDataFor_TM_Type(void *dest, void *src)
{
    memcpy(dest, src, sizeof(TM_Type));
}

byte* MovePtrBySizeOf_TM_Type(byte *pData)
{
    return pData + sizeof(TM_Type);
}

byte* CreateInstanceOf_TM_Type() {
    TM_Type *p = (TM_Type*)malloc(sizeof(TM_Type));
    TM_Type_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_TM_Type(byte *pData) {
    free(pData);
}

void SetDataFor_T_Int32(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_Int32));
}

byte* MovePtrBySizeOf_T_Int32(byte *pData)
{
    return pData + sizeof(T_Int32);
}

byte* CreateInstanceOf_T_Int32() {
    T_Int32 *p = (T_Int32*)malloc(sizeof(T_Int32));
    T_Int32_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_Int32(byte *pData) {
    free(pData);
}

void SetDataFor_T_UInt32(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_UInt32));
}

byte* MovePtrBySizeOf_T_UInt32(byte *pData)
{
    return pData + sizeof(T_UInt32);
}

byte* CreateInstanceOf_T_UInt32() {
    T_UInt32 *p = (T_UInt32*)malloc(sizeof(T_UInt32));
    T_UInt32_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_UInt32(byte *pData) {
    free(pData);
}

void SetDataFor_T_Int8(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_Int8));
}

byte* MovePtrBySizeOf_T_Int8(byte *pData)
{
    return pData + sizeof(T_Int8);
}

byte* CreateInstanceOf_T_Int8() {
    T_Int8 *p = (T_Int8*)malloc(sizeof(T_Int8));
    T_Int8_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_Int8(byte *pData) {
    free(pData);
}

void SetDataFor_T_UInt8(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_UInt8));
}

byte* MovePtrBySizeOf_T_UInt8(byte *pData)
{
    return pData + sizeof(T_UInt8);
}

byte* CreateInstanceOf_T_UInt8() {
    T_UInt8 *p = (T_UInt8*)malloc(sizeof(T_UInt8));
    T_UInt8_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_UInt8(byte *pData) {
    free(pData);
}

void SetDataFor_T_Boolean(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_Boolean));
}

byte* MovePtrBySizeOf_T_Boolean(byte *pData)
{
    return pData + sizeof(T_Boolean);
}

byte* CreateInstanceOf_T_Boolean() {
    T_Boolean *p = (T_Boolean*)malloc(sizeof(T_Boolean));
    T_Boolean_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_Boolean(byte *pData) {
    free(pData);
}

void SetDataFor_T_Null_Record(void *dest, void *src)
{
    memcpy(dest, src, sizeof(T_Null_Record));
}

byte* MovePtrBySizeOf_T_Null_Record(byte *pData)
{
    return pData + sizeof(T_Null_Record);
}

byte* CreateInstanceOf_T_Null_Record() {
    T_Null_Record *p = (T_Null_Record*)malloc(sizeof(T_Null_Record));
    T_Null_Record_Initialize(p);
    return (byte*)p;
}

void DestroyInstanceOf_T_Null_Record(byte *pData) {
    free(pData);
}

void SetDataFor_int(void *dest, void *src)
{
    memcpy(dest, src, sizeof(int));
}

byte* MovePtrBySizeOf_int(byte *pData)
{
    return pData + sizeof(int);
}

byte* CreateInstanceOf_int() {
    int *p = (int*)malloc(sizeof(int));
    *p = 0;
    return (byte*)p;
}

void DestroyInstanceOf_int(byte *pData) {
    free(pData);
}

