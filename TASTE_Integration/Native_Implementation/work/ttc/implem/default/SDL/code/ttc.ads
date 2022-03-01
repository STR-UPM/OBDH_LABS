-- This file was generated automatically by OpenGEODE: DO NOT MODIFY IT !

with Interfaces,
     Interfaces.C.Strings,
     Ada.Characters.Handling;

use Interfaces,
    Interfaces.C.Strings,
    Ada.Characters.Handling;

with NATIVE_IMPLEMENTATION_DATAVIEW;
use NATIVE_IMPLEMENTATION_DATAVIEW;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;
with Ttc_Datamodel; use Ttc_Datamodel;

with Ttc_RI;
package Ttc with Elaborate_Body is
   ctxt : aliased asn1SccTtc_Context :=
      (Init_Done => False,
       others => <>);
   function To_Tm_Type_selection (Src : NATIVE_IMPLEMENTATION_DATAVIEW.asn1SccTm_Type_selection) return Ttc_Datamodel.asn1SccTm_Type_selection is (Ttc_Datamodel.asn1SccTm_Type_selection'Enum_Val (Src'Enum_Rep));
   function Get_State return chars_ptr is (New_String (asn1SccTtc_States'Image (ctxt.State))) with Export, Convention => C, Link_Name => "ttc_state";
   procedure Startup with Export, Convention => C, Link_Name => "Ttc_startup";
   --  Provided interface "HK_Task"
   procedure HK_Task;
   pragma Export(C, HK_Task, "ttc_PI_HK_Task");
   --  Provided interface "TC"
   procedure TC(Telecommand: in out asn1SccTC_Type);
   pragma Export(C, TC, "ttc_PI_TC");
   --  Provided interface "TC_Task"
   procedure TC_Task;
   pragma Export(C, TC_Task, "ttc_PI_TC_Task");
   --  Provided interface "TM_Basic_Task"
   procedure TM_Basic_Task;
   pragma Export(C, TM_Basic_Task, "ttc_PI_TM_Basic_Task");
   --  Provided interface "TM_Error"
   procedure TM_Error(Contents: in out asn1SccTM_Error_Contents);
   pragma Export(C, TM_Error, "ttc_PI_TM_Error");
   --  Provided interface "TM_Mode"
   procedure TM_Mode(op_mode: in out asn1SccOperating_Mode);
   pragma Export(C, TM_Mode, "ttc_PI_TM_Mode");
   --  Required interface "TM"
   procedure RI_0_TM (Telemetry : in out asn1SccTM_Type) renames Ttc_RI.TM;
   --  Synchronous Required Interface "Current_Mode"
   procedure RI_0_Current_Mode (Current : out asn1SccOperating_Mode) renames Ttc_RI.Current_Mode;
   --  Synchronous Required Interface "Get"
   procedure RI_0_Get (Out_Data : out asn1SccSatellite_State) renames Ttc_RI.Get;
   --  Synchronous Required Interface "Process_TC"
   procedure RI_0_Process_TC (Tc : in out asn1SccTC_Type) renames Ttc_RI.Process_TC;
end Ttc;