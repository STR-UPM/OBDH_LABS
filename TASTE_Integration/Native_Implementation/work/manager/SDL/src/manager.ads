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
with Manager_Datamodel; use Manager_Datamodel;

with Manager_RI;
package Manager with Elaborate_Body is
   ctxt : aliased asn1SccManager_Context :=
      (Init_Done => False,
       idle_error_msg => (Data => (92, 39, 111, 112, 101, 110, 45, 108, 105, 110, 107, 92, 39, 32, 105, 115, 32, 111, 110, 108, 121, 32, 97, 108, 108, 111, 119, 101, 100, 32, 100, 117, 114, 105, 110, 103, 32, 73, 100, 108, 101, 32, 109, 111, 100, 101, others => 0), Length => 46),
      coverage_error_msg => (Data => (92, 39, 99, 108, 111, 115, 101, 45, 108, 105, 110, 107, 92, 39, 32, 97, 110, 100, 32, 92, 39, 114, 101, 113, 117, 101, 115, 116, 45, 104, 107, 92, 39, 32, 111, 110, 108, 121, 32, 97, 108, 108, 111, 119, 101, 100, 32, 100, 117, 114, 105, 110, 103, 32, 67, 111, 118, 101, 114, 97, 103, 101, 32, 109, 111, 100, 101, others => 0), Length => 67),
      others => <>);
   function To_Tm_Type_selection (Src : NATIVE_IMPLEMENTATION_DATAVIEW.asn1SccTm_Type_selection) return Manager_Datamodel.asn1SccTm_Type_selection is (Manager_Datamodel.asn1SccTm_Type_selection'Enum_Val (Src'Enum_Rep));
   function Get_State return chars_ptr is (New_String (asn1SccManager_States'Image (ctxt.State))) with Export, Convention => C, Link_Name => "manager_state";
   procedure Startup with Export, Convention => C, Link_Name => "Manager_startup";
   procedure Current_Mode(Current: in out asn1SccOperating_Mode);
   pragma Export (C, Current_Mode, "manager_PI_Current_Mode");
   procedure Process_TC(Tc: in out asn1SccTC_Type);
   pragma Export (C, Process_TC, "manager_PI_Process_TC");
   --  Provided interface "Current_Mode"
   procedure Current_Mode_Transition;
   --  Provided interface "Process_TC"
   procedure Process_TC_Transition;
   --  Provided interface "Coverage_Timer"
   procedure Coverage_Timer;
   pragma Export(C, Coverage_Timer, "manager_PI_Coverage_Timer");
   --  Paramless required interface "HK_Task"
   procedure RI_0_HK_Task renames Manager_RI.HK_Task;
   --  Required interface "TM_Error"
   procedure RI_0_TM_Error (Contents : in out asn1SccTM_Error_Contents) renames Manager_RI.TM_Error;
   --  Required interface "TM_Mode"
   procedure RI_0_TM_Mode (op_mode : in out asn1SccOperating_Mode) renames Manager_RI.TM_Mode;
   --  Timer Coverage_Timer SET and RESET functions
   procedure SET_Coverage_Timer (Val : in out asn1SccT_UInt32) renames Manager_RI.Set_Coverage_Timer;
   procedure RESET_Coverage_Timer renames Manager_RI.Reset_Coverage_Timer;
end Manager;