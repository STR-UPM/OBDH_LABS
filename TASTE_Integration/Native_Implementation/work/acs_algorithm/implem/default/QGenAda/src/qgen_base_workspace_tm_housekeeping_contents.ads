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

with qgen_base_workspace_Satellite_State; use qgen_base_workspace_Satellite_State;
with qgen_base_workspace_Analog_Data_Table; use qgen_base_workspace_Analog_Data_Table;
with Interfaces; use Interfaces;

package qgen_base_workspace_TM_Housekeeping_Contents is

   type TM_Housekeeping_Contents is record
      element_00 : Satellite_State;
      element_01 : Satellite_State;
      element_02 : Satellite_State;
      element_03 : Satellite_State;
      length : Integer_32;
   end record;

end qgen_base_workspace_TM_Housekeeping_Contents;
--  @EOF
