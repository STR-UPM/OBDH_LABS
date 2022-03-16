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
with qgen_type_wrap_io_qgen_entry_Step; use qgen_type_wrap_io_qgen_entry_Step;
with q_1_Fail_states; use q_1_Fail_states;
with qgen_base_workspace_T_Float; use qgen_base_workspace_T_Float;
with qgen_base_workspace_T_MT_Working; use qgen_base_workspace_T_MT_Working;
with qgen_type_Long_Float_Array_3; use qgen_type_Long_Float_Array_3;
with Interfaces; use Interfaces;
with qgen_base_workspace_T_Omega; use qgen_base_workspace_T_Omega;
with qgen_type_Long_Float_Array_15; use qgen_type_Long_Float_Array_15;

package qgen_entry_Step is
   Step_memory : Step_State;

   procedure init;

   procedure comp
      (Input : qgen_entry_Step_comp_Input;
       Output : out qgen_entry_Step_comp_Output);

end qgen_entry_Step;
--  @EOF
