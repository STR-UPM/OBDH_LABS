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
with Interfaces; use Interfaces;

package qgen_base_workspace_Satellite_State_Formatted_timestamp is

   type Satellite_State_Formatted_timestamp is record
      element_data : Unsigned_8_Array_80;
      length : Integer_32;
   end record;

end qgen_base_workspace_Satellite_State_Formatted_timestamp;
--  @EOF
