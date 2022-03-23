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

with qgen_base_workspace_Satellite_State; use qgen_base_workspace_Satellite_State;
with qgen_base_workspace_Analog_Data_Table; use qgen_base_workspace_Analog_Data_Table;
with Interfaces; use Interfaces;

package qgen_base_workspace_TM_Hello is

   type TM_Hello is record
      tm_timestamp : Unsigned_32;
      tm_payload : Satellite_State;
   end record;

end qgen_base_workspace_TM_Hello;
--  @EOF
