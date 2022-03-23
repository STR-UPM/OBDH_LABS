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

package qgen_type_Long_Float_Array_3 is

   subtype Long_Float_Array_3_Range_1 is Integer range 1 .. 3;
   type Long_Float_Array_3 is array (Long_Float_Array_3_Range_1) of Long_Float;
end qgen_type_Long_Float_Array_3;
--  @EOF
