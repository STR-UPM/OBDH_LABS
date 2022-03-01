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

package body q_2_Fails is

   procedure initOutputs (M_xyz : out Float_Array_3) is
   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails/M_xyz'

      for i in 1 .. 3 loop
         M_xyz (i) := 0.0E+00;
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails/M_xyz'
   end initOutputs;

   procedure comp
      (Fail : Float_Array_3;
       M : Float_Array_3;
       M_xyz : out Float_Array_3)
   is
      Mux_out1 : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/2 Fails/Mux/OutDataPort1

   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Product2'
      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Fail'
      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Demux1'
      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails/M'
      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Demux3'
      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Product1'
      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Product'
      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Mux'
      Mux_out1 (1) := (M (1)) * (Fail (1));
      Mux_out1 (2) := (M (2)) * (Fail (2));
      Mux_out1 (3) := (M (3)) * (Fail (3));
      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Mux'
      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Product'
      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Product1'
      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Demux3'
      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails/M'
      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Demux1'
      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Fail'
      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails/Product2'

      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails/M_xyz'

      for i in 1 .. 3 loop
         M_xyz (i) := Mux_out1 (i);
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails/M_xyz'
   end comp;
end q_2_Fails;
--  @EOF
