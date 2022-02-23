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
       others => <>);
   function To_Tm_Type_selection (Src : NATIVE_IMPLEMENTATION_DATAVIEW.asn1SccTm_Type_selection) return Manager_Datamodel.asn1SccTm_Type_selection is (Manager_Datamodel.asn1SccTm_Type_selection'Enum_Val (Src'Enum_Rep));
   function Get_State return chars_ptr is (New_String (asn1SccManager_States'Image (ctxt.State))) with Export, Convention => C, Link_Name => "manager_state";
   procedure Startup with Export, Convention => C, Link_Name => "Manager_startup";
   --  Provided interface "Current_Mode"
   procedure Current_Mode_Transition;
   --  Provided interface "Process_TC"
   procedure Process_TC_Transition;
   --  Provided interface "Coverage_Timer"
   procedure Coverage_Timer;
   pragma Export(C, Coverage_Timer, "manager_PI_Coverage_Timer");
   --  Timer Coverage_Timer SET and RESET functions
   procedure SET_Coverage_Timer (Val : in out asn1SccT_UInt32) renames Manager_RI.Set_Coverage_Timer;
   procedure RESET_Coverage_Timer renames Manager_RI.Reset_Coverage_Timer;
end Manager;