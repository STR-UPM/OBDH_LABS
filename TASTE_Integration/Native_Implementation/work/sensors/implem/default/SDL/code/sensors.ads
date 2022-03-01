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
with Sensors_Datamodel; use Sensors_Datamodel;

with Sensors_RI;
package Sensors with Elaborate_Body is
   ctxt : aliased asn1SccSensors_Context :=
      (Init_Done => False,
       others => <>);
   function To_Tm_Type_selection (Src : NATIVE_IMPLEMENTATION_DATAVIEW.asn1SccTm_Type_selection) return Sensors_Datamodel.asn1SccTm_Type_selection is (Sensors_Datamodel.asn1SccTm_Type_selection'Enum_Val (Src'Enum_Rep));
   function Get_State return chars_ptr is (New_String (asn1SccSensors_States'Image (ctxt.State))) with Export, Convention => C, Link_Name => "sensors_state";
   procedure Startup with Export, Convention => C, Link_Name => "Sensors_startup";
   --  Provided interface "Get"
   procedure Get_Transition;
end Sensors;