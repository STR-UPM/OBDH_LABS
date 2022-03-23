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

with Interfaces; use Interfaces;

package qgen_base_workspace_T_Int8 is

   subtype T_Int8 is Integer_8;
   --  range is (-128, 127)

end qgen_base_workspace_T_Int8;
--  @EOF
