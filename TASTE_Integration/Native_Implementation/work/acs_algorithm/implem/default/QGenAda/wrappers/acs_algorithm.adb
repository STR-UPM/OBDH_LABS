with qgen_entry_Step;
use qgen_entry_Step;
package body acs_algorithm is

    procedure Ada_Convert_From_native_To_T_B_b_T_In_Step_QGenAda_BBT(T_IN : in asn1SccT_B_b_T; QGen_Out : in out qgen_entry_Step_comp_Input) is
    begin
        -- TODO: FromASN1SCCtoQGenAda: MapSequenceOf
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(1) := T_IN.data(1);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(2) := T_IN.data(2);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(3) := T_IN.data(3);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(4) := T_IN.data(4);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(5) := T_IN.data(5);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(6) := T_IN.data(6);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(7) := T_IN.data(7);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(8) := T_IN.data(8);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(9) := T_IN.data(9);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(10) := T_IN.data(10);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(11) := T_IN.data(11);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(12) := T_IN.data(12);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(13) := T_IN.data(13);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(14) := T_IN.data(14);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.BBT.element_data(15) := T_IN.data(15);
    end Ada_Convert_From_native_To_T_B_b_T_In_Step_QGenAda_BBT;

    procedure Ada_Convert_From_native_To_T_Omega_In_Step_QGenAda_Omega(T_IN : in asn1SccT_Omega; QGen_Out : in out qgen_entry_Step_comp_Input) is
    begin
        -- TODO: FromASN1SCCtoQGenAda: MapSequenceOf
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.Omega.element_data(1) := T_IN.data(1);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.Omega.element_data(2) := T_IN.data(2);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.Omega.element_data(3) := T_IN.data(3);
    end Ada_Convert_From_native_To_T_Omega_In_Step_QGenAda_Omega;

    procedure Ada_Convert_From_native_To_T_Float_In_Step_QGenAda_K_PB(T_IN : in asn1SccT_Float; QGen_Out : in out qgen_entry_Step_comp_Input) is
    begin
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.K_PB := T_IN;
    end Ada_Convert_From_native_To_T_Float_In_Step_QGenAda_K_PB;

    procedure Ada_Convert_From_native_To_T_Float_In_Step_QGenAda_K_PE(T_IN : in asn1SccT_Float; QGen_Out : in out qgen_entry_Step_comp_Input) is
    begin
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.K_PE := T_IN;
    end Ada_Convert_From_native_To_T_Float_In_Step_QGenAda_K_PE;

    procedure Ada_Convert_From_native_To_T_Float_In_Step_QGenAda_M_M(T_IN : in asn1SccT_Float; QGen_Out : in out qgen_entry_Step_comp_Input) is
    begin
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.M_M := T_IN;
    end Ada_Convert_From_native_To_T_Float_In_Step_QGenAda_M_M;

    procedure Ada_Convert_From_native_To_T_MT_Working_In_Step_QGenAda_MT_Working(T_IN : in asn1SccT_MT_Working; QGen_Out : in out qgen_entry_Step_comp_Input) is
    begin
        -- TODO: FromASN1SCCtoQGenAda: MapSequenceOf
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.MT_Working.element_data(1) := T_IN.data(1);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.MT_Working.element_data(2) := T_IN.data(2);
        -- TODO: FromASN1SCCtoQGenAda: MapReal:
         QGen_Out.MT_Working.element_data(3) := T_IN.data(3);
    end Ada_Convert_From_native_To_T_MT_Working_In_Step_QGenAda_MT_Working;

    procedure Ada_Convert_From_T_Control_To_native_In_Step_QGenAda_Control(QGen_In : in qgen_entry_Step_comp_Output; T_OUT : in out asn1SccT_Control) is
    begin
        -- TODO: MapSequenceOf
        T_OUT.data(1) := QGen_In.Control.element_data(1);
        T_OUT.data(2) := QGen_In.Control.element_data(2);
        T_OUT.data(3) := QGen_In.Control.element_data(3);
    end Ada_Convert_From_T_Control_To_native_In_Step_QGenAda_Control;

    procedure Execute_Step_QGenAda (BBT : in out asn1SccT_B_b_T; Omega : in out asn1SccT_Omega; K_PB : in out asn1SccT_Float; K_PE : in out asn1SccT_Float; M_M : in out asn1SccT_Float; MT_Working : in out asn1SccT_MT_Working; Control : in out asn1SccT_Control) is
        QGen_Input_Step : qgen_entry_Step_comp_Input;
        QGen_Output_Step : qgen_entry_Step_comp_Output;
    begin

        Ada_Convert_From_native_To_T_B_b_T_In_Step_QGenAda_BBT(BBT, QGen_Input_Step);
        Ada_Convert_From_native_To_T_Omega_In_Step_QGenAda_Omega(Omega, QGen_Input_Step);
        Ada_Convert_From_native_To_T_Float_In_Step_QGenAda_K_PB(K_PB, QGen_Input_Step);
        Ada_Convert_From_native_To_T_Float_In_Step_QGenAda_K_PE(K_PE, QGen_Input_Step);
        Ada_Convert_From_native_To_T_Float_In_Step_QGenAda_M_M(M_M, QGen_Input_Step);
        Ada_Convert_From_native_To_T_MT_Working_In_Step_QGenAda_MT_Working(MT_Working, QGen_Input_Step);

        comp (QGen_Input_Step, QGen_Output_Step);

        Ada_Convert_From_T_Control_To_native_In_Step_QGenAda_Control(QGen_Output_Step, Control);
    end Execute_Step_QGenAda;
begin
    init;
end acs_algorithm;
