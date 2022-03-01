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
with Platform_Datamodel; use Platform_Datamodel;

with Platform_RI;
package Platform with Elaborate_Body is
   ctxt : aliased asn1SccPlatform_Context :=
      (Init_Done => False,
       others => <>);
   function To_Tm_Type_selection (Src : NATIVE_IMPLEMENTATION_DATAVIEW.asn1SccTm_Type_selection) return Platform_Datamodel.asn1SccTm_Type_selection is (Platform_Datamodel.asn1SccTm_Type_selection'Enum_Val (Src'Enum_Rep));
   function Get_State return chars_ptr is (New_String (asn1SccPlatform_States'Image (ctxt.State))) with Export, Convention => C, Link_Name => "platform_state";
   procedure Startup with Export, Convention => C, Link_Name => "Platform_startup";
   --  Provided interface "Housekeeping_Task"
   procedure Housekeeping_Task;
   pragma Export(C, Housekeeping_Task, "platform_PI_Housekeeping_Task");
   --  Synchronous Required Interface "Get"
   procedure RI_0_Get (Analog_Data : out asn1SccAnalog_Data_Table) renames Platform_RI.Get;
   --  Synchronous Required Interface "Put"
   procedure RI_0_Put (In_Data : in out asn1SccSatellite_State) renames Platform_RI.Put;
end Platform;