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

with qgen_type_Float_Array_3; use qgen_type_Float_Array_3;

package q_2_Fails is

   procedure initOutputs (M_xyz : out Float_Array_3);

   procedure comp
      (Fail : Float_Array_3;
       M : Float_Array_3;
       M_xyz : out Float_Array_3);

end q_2_Fails;
--  @EOF
