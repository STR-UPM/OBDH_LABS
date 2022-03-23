--  Copyright (C) Your Company Name
--
--  @generated with QGen Code Generator 22.1 (20220109)
--  Command line arguments: ./xmi/Step.xmi
--    --gen-entrypoint
--    --wrap-io
--    --pre-process-xmi
--    --incremental
--    --no-misra
--    --language ada
--    --output src

pragma Style_Checks ("M999");  --  ignore long lines

with qgen_type_Long_Float_Array_3; use qgen_type_Long_Float_Array_3;

package qgen_base_workspace_T_Omega is

   type T_Omega is record
      element_data : Long_Float_Array_3;
   end record;

end qgen_base_workspace_T_Omega;
--  @EOF
