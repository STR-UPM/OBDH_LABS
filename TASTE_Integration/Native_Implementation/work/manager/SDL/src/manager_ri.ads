--  This file is a stub for the implementation of the required interfaces
--  It is normally overwritten by TASTE with the actual connection to the
--  middleware. If you use Opengeode independently from TASTE you must
--  edit the .adb (body) with your own implementation of these functions.
--  The body stub will be generated only once.

with NATIVE_IMPLEMENTATION_DATAVIEW;
use NATIVE_IMPLEMENTATION_DATAVIEW;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;

package Manager_RI is
   procedure HK_Task;
   procedure TM_Error (Contents : in out asn1SccTM_Error_Contents);
   procedure TM_Mode (op_mode : in out asn1SccOperating_Mode);
   procedure SET_Coverage_Timer (Val : in out asn1SccT_UInt32);
   procedure RESET_Coverage_Timer;
end Manager_RI;