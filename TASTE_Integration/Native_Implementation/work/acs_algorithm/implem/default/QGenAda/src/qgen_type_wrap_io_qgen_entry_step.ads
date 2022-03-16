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
with qgen_base_workspace_T_Float; use qgen_base_workspace_T_Float;
with qgen_base_workspace_T_MT_Working; use qgen_base_workspace_T_MT_Working;
with qgen_type_Long_Float_Array_3; use qgen_type_Long_Float_Array_3;
with qgen_base_workspace_T_Omega; use qgen_base_workspace_T_Omega;
with qgen_type_Long_Float_Array_15; use qgen_type_Long_Float_Array_15;

package qgen_type_wrap_io_qgen_entry_Step is

   type qgen_entry_Step_comp_Input is record
      BBT : T_B_b_T;
      Omega : T_Omega;
      K_PB : T_Float;
      K_PE : T_Float;
      M_M : T_Float;
      MT_Working : T_MT_Working;
   end record;

   type qgen_entry_Step_comp_Output is record
      Control : T_Control;
   end record;

end qgen_type_wrap_io_qgen_entry_Step;
--  @EOF
