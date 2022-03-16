--  Copyright (C) Your Company Name
--
--  @generated with QGen Code Generator 22.0w (20210910)
--  Command line arguments: ./xmi/Step.xmi
--    --gen-entrypoint
--    --wrap-io
--    --pre-process-xmi
--    --incremental
--    --no-misra
--    --language ada
--    --output src

pragma Style_Checks ("M999");  --  ignore long lines

with qgen_base_workspace_T_Control; use qgen_base_workspace_T_Control;
with qgen_base_workspace_T_B_b_T; use qgen_base_workspace_T_B_b_T;
with qgen_type_Float_Array_3; use qgen_type_Float_Array_3;
with Step_states; use Step_states;
with q_1_Fail_states; use q_1_Fail_states;
with qgen_base_workspace_T_Float; use qgen_base_workspace_T_Float;
with qgen_base_workspace_T_MT_Working; use qgen_base_workspace_T_MT_Working;
with qgen_type_Long_Float_Array_3; use qgen_type_Long_Float_Array_3;
with Interfaces; use Interfaces;
with qgen_base_workspace_T_Omega; use qgen_base_workspace_T_Omega;
with qgen_type_Long_Float_Array_15; use qgen_type_Long_Float_Array_15;

package Step is

   procedure initStates (State : in out Step_State);

   procedure initOutputs (State : in out Step_State);

   procedure comp
      (BBT : T_B_b_T;
       Omega : T_Omega;
       K_PB : T_Float;
       K_PE : T_Float;
       M_M : T_Float;
       MT_Working : T_MT_Working;
       Control : out T_Control;
       State : in out Step_State);

   procedure up (State : in out Step_State);

end Step;
--  @EOF
