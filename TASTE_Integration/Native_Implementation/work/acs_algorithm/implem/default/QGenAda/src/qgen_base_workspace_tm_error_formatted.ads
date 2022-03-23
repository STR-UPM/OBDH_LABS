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

with qgen_type_Unsigned_8_Array_80; use qgen_type_Unsigned_8_Array_80;
with qgen_base_workspace_TM_Error_Contents; use qgen_base_workspace_TM_Error_Contents;
with qgen_base_workspace_TM_Error_Formatted_tm_timestamp; use qgen_base_workspace_TM_Error_Formatted_tm_timestamp;
with Interfaces; use Interfaces;

package qgen_base_workspace_TM_Error_Formatted is

   type TM_Error_Formatted is record
      tm_timestamp : TM_Error_Formatted_tm_timestamp;
      tm_payload : TM_Error_Contents;
   end record;

end qgen_base_workspace_TM_Error_Formatted;
--  @EOF
