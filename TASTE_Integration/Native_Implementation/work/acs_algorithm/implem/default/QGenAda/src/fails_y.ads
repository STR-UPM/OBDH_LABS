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

package Fails_Y is

   procedure initOutputs (M_yz : out Float_Array_3);

   procedure comp
      (B_tot : Float;
       b : Float_Array_3;
       T_Nm : Float_Array_3;
       M_yz : out Float_Array_3);

end Fails_Y;
--  @EOF
