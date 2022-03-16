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

package qgen_type_Float_Array_15 is

   subtype Float_Array_15_Range_1 is Integer range 1 .. 15;
   type Float_Array_15 is array (Float_Array_15_Range_1) of Float;
end qgen_type_Float_Array_15;
--  @EOF
