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
with Interfaces; use Interfaces;

package Step_states is

   type Step_State is record
      Noone_Fails1_M_xyz : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/Noone Fails1/OutDataPort1

      q_1_Fail_M_xyz : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/OutDataPort1

      q_2_Fails_M_xyz : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/2 Fails/OutDataPort1

      Memory_memory : Float_Array_3;
   --  Memory from Step/Subsystem/discretization/Memory

      Noone_Fails1_enabled : Boolean;
      q_1_Fail_enabled : Boolean;
      q_2_Fails_enabled : Boolean;
      Sum_3_out1 : Float_Array_3;
   --  Output from Step/Subsystem/discretization/Sum/OutDataPort1

      Compare_To_Constant3_out1 : Unsigned_8;
   --  Output from Step/Subsystem/If Fail Recalculate/Compare To
   --  Constant3/OutDataPort1

      Compare_To_Constant2_out1 : Unsigned_8;
   --  Output from Step/Subsystem/If Fail Recalculate/Compare To
   --  Constant2/OutDataPort1

      Compare_To_Constant1_out1 : Unsigned_8;
   --  Output from Step/Subsystem/If Fail Recalculate/Compare To
   --  Constant1/OutDataPort1

      q_1_Fail_memory : q_1_Fail_State;
   end record;

end Step_states;
--  @EOF
