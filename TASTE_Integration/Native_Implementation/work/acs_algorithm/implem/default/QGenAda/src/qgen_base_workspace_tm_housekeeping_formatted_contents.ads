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

with qgen_base_workspace_Satellite_State_Formatted_timestamp; use qgen_base_workspace_Satellite_State_Formatted_timestamp;
with qgen_base_workspace_Satellite_State_Formatted; use qgen_base_workspace_Satellite_State_Formatted;
with qgen_type_Unsigned_8_Array_80; use qgen_type_Unsigned_8_Array_80;
with qgen_base_workspace_Formatted_Data_Table; use qgen_base_workspace_Formatted_Data_Table;
with Interfaces; use Interfaces;

package qgen_base_workspace_TM_Housekeeping_Formatted_Contents is

   type TM_Housekeeping_Formatted_Contents is record
      element_00 : Satellite_State_Formatted;
      element_01 : Satellite_State_Formatted;
      element_02 : Satellite_State_Formatted;
      element_03 : Satellite_State_Formatted;
      length : Integer_32;
   end record;

end qgen_base_workspace_TM_Housekeeping_Formatted_Contents;
--  @EOF
