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

package q_1_Fail_states is

   type q_1_Fail_State is record
      Fails_X_M_yz : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails
   --  X/OutDataPort1

      Fails_Y_M_yz : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails
   --  Y/OutDataPort1

      Fails_Z_M_xy : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails
   --  Z/OutDataPort1

      Fails_X_enabled : Boolean;
      Fails_Y_enabled : Boolean;
      Fails_Z_enabled : Boolean;
      Selector_out1 : Boolean;
   --  Output from Step/Subsystem/If Fail Recalculate/1
   --  Fail/Selector/OutDataPort1

      Selector1_out1 : Boolean;
   --  Output from Step/Subsystem/If Fail Recalculate/1
   --  Fail/Selector1/OutDataPort1

      Selector2_out1 : Boolean;
   --  Output from Step/Subsystem/If Fail Recalculate/1
   --  Fail/Selector2/OutDataPort1

   end record;

end q_1_Fail_states;
--  @EOF
