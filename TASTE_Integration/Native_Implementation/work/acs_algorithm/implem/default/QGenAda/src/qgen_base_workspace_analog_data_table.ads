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

with Interfaces; use Interfaces;

package qgen_base_workspace_Analog_Data_Table is

   type Analog_Data_Table is record
      obc_t : Unsigned_16;
      obc_v : Unsigned_16;
   end record;

end qgen_base_workspace_Analog_Data_Table;
--  @EOF
