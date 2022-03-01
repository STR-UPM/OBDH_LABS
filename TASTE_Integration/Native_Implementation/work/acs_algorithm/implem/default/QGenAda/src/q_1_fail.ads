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
with q_1_Fail_states; use q_1_Fail_states;

package q_1_Fail is

   procedure initStates (State : in out q_1_Fail_State);

   procedure initOutputs
      (M_xyz : out Float_Array_3;
       State : in out q_1_Fail_State);

   procedure comp
      (Fail : Float_Array_3;
       M : Float_Array_3;
       B : Float_Array_3;
       M_xyz : out Float_Array_3;
       State : in out q_1_Fail_State);

end q_1_Fail;
--  @EOF
