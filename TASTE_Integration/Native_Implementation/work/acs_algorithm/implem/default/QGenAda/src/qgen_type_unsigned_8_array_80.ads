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

package qgen_type_Unsigned_8_Array_80 is

   subtype Unsigned_8_Array_80_Range_1 is Integer range 1 .. 80;
   type Unsigned_8_Array_80 is array (Unsigned_8_Array_80_Range_1) of Unsigned_8;
end qgen_type_Unsigned_8_Array_80;
--  @EOF
