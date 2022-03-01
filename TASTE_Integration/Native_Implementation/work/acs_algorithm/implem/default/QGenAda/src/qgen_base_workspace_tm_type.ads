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

with qgen_base_workspace_TM_Housekeeping_Contents; use qgen_base_workspace_TM_Housekeeping_Contents;
with qgen_base_workspace_Satellite_State; use qgen_base_workspace_Satellite_State;
with qgen_type_Unsigned_8_Array_80; use qgen_type_Unsigned_8_Array_80;
with qgen_base_workspace_TM_Hello; use qgen_base_workspace_TM_Hello;
with qgen_base_workspace_TM_Error; use qgen_base_workspace_TM_Error;
with qgen_base_workspace_Analog_Data_Table; use qgen_base_workspace_Analog_Data_Table;
with qgen_base_workspace_TM_Housekeeping; use qgen_base_workspace_TM_Housekeeping;
with qgen_base_workspace_TM_Error_Contents; use qgen_base_workspace_TM_Error_Contents;
with qgen_base_workspace_TM_Mode; use qgen_base_workspace_TM_Mode;
with Interfaces; use Interfaces;

package qgen_base_workspace_TM_Type is

   type TM_Type is record
      choiceIdx : Unsigned_8;
      hello : TM_Hello;
      hk : TM_Housekeeping;
      mode : TM_Mode;
      err : TM_Error;
   end record;

end qgen_base_workspace_TM_Type;
--  @EOF
