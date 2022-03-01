with Interfaces,
     Interfaces.C.Strings,
     Ada.Characters.Handling,
     TASTE_BasicTypes;
use Interfaces,
     Interfaces.C.Strings,
     Ada.Characters.Handling,
     TASTE_BasicTypes;
with native_implementation_dataview; use native_implementation_dataview;
with taste_basictypes; use taste_basictypes;

with qgen_type_wrap_io_qgen_entry_Step;
use qgen_type_wrap_io_qgen_entry_Step;
package acs_algorithm is

    procedure Ada_Convert_From_native_To_T_B_b_T_In_Step_QGenAda_BBT(T_IN : in asn1SccT_B_b_T; QGen_Out : in out qgen_entry_Step_comp_Input);

    procedure Ada_Convert_From_native_To_T_Omega_In_Step_QGenAda_Omega(T_IN : in asn1SccT_Omega; QGen_Out : in out qgen_entry_Step_comp_Input);

    procedure Ada_Convert_From_native_To_T_Float_In_Step_QGenAda_K_PB(T_IN : in asn1SccT_Float; QGen_Out : in out qgen_entry_Step_comp_Input);

    procedure Ada_Convert_From_native_To_T_Float_In_Step_QGenAda_K_PE(T_IN : in asn1SccT_Float; QGen_Out : in out qgen_entry_Step_comp_Input);

    procedure Ada_Convert_From_native_To_T_Float_In_Step_QGenAda_M_M(T_IN : in asn1SccT_Float; QGen_Out : in out qgen_entry_Step_comp_Input);

    procedure Ada_Convert_From_native_To_T_MT_Working_In_Step_QGenAda_MT_Working(T_IN : in asn1SccT_MT_Working; QGen_Out : in out qgen_entry_Step_comp_Input);

    procedure Ada_Convert_From_T_Control_To_native_In_Step_QGenAda_Control(QGen_In : in qgen_entry_Step_comp_Output; T_OUT : in out asn1SccT_Control);

    procedure Execute_Step_QGenAda (BBT : in out asn1SccT_B_b_T; Omega : in out asn1SccT_Omega; K_PB : in out asn1SccT_Float; K_PE : in out asn1SccT_Float; M_M : in out asn1SccT_Float; MT_Working : in out asn1SccT_MT_Working; Control : in out asn1SccT_Control);
    pragma Export (C, Execute_Step_QGenAda, "acs_algorithm_PI_Step");

end acs_algorithm;
