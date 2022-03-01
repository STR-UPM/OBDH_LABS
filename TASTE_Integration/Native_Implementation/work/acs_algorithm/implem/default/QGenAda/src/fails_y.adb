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

with qgen_type_Float_Array_2_3; use qgen_type_Float_Array_2_3;
with qgen_type_Float_Array_2; use qgen_type_Float_Array_2;
with qgen_type_Float_Array_6; use qgen_type_Float_Array_6;
with Qgen_Boolean_To_Long_Float;
with Qgen_Pow_Float;
with Qgen_Mod_Integer;
with Interfaces; use Interfaces;

package body Fails_Y is

   procedure initOutputs (M_yz : out Float_Array_3) is
   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/M_yz'

      for i in 1 .. 3 loop
         M_yz (i) := 0.0E+00;
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/M_yz'
   end initOutputs;

   procedure comp
      (B_tot : Float;
       b : Float_Array_3;
       T_Nm : Float_Array_3;
       M_yz : out Float_Array_3)
   is
      Mux_1_out1 : Float_Array_6;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix
   --  y-fails/Mux/OutDataPort1

      Reshape_out1 : Float_Array_2_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix
   --  y-fails/Reshape/OutDataPort1

      Product1_out1 : Float_Array_2;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails
   --  Y/Product1/OutDataPort1

      Product3_out1 : Float_Array_2;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails
   --  Y/Product3/OutDataPort1

      Mux_out1 : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails
   --  Y/Mux/OutDataPort1

   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn9'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn8'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn5'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn3'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn2'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn1'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/b'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Mux'
      Mux_1_out1 (1) := Float ((Long_Float (-((b (1)) * (b (3))))) / ((Long_Float (b (2))) + ((1.0E-10) * (Qgen_Boolean_To_Long_Float.Boolean_To_Long_Float ((b (2)) = (0.0E+00))))));
      Mux_1_out1 (2) := Float ((Long_Float (-((1.0E+00) - (Qgen_Pow_Float.pow (b (1), Float (2.0E+00)))))) / ((Long_Float (b (2))) + ((1.0E-10) * (Qgen_Boolean_To_Long_Float.Boolean_To_Long_Float ((b (2)) = (0.0E+00))))));
      Mux_1_out1 (3) := -(b (3));
      Mux_1_out1 (4) := b (1);
      Mux_1_out1 (5) := Float ((Long_Float ((1.0E+00) - (Qgen_Pow_Float.pow (b (3), Float (2.0E+00))))) / ((Long_Float (b (2))) + ((1.0E-10) * (Qgen_Boolean_To_Long_Float.Boolean_To_Long_Float ((b (2)) = (0.0E+00))))));
      Mux_1_out1 (6) := Float ((Long_Float ((b (1)) * (b (3)))) / ((Long_Float (b (2))) + ((1.0E-10) * (Qgen_Boolean_To_Long_Float.Boolean_To_Long_Float ((b (2)) = (0.0E+00))))));
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Mux'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/b'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn1'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn2'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn3'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn5'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn8'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Fcn9'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Reshape'

      for Idx in 0 .. 5 loop
         Reshape_out1 ((Qgen_Mod_Integer.Mod_Fun (Idx, Integer (2))) + (1), ((Idx) / (2)) + (1)) := Mux_1_out1 ((Idx) + (1));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Matrix y-fails/Reshape'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/T_Nm'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Product1'

      for i in 1 .. 2 loop
         Product1_out1 (i) := (Reshape_out1 (i, 1)) * (T_Nm (1));

         for h in 2 .. 3 loop
            Product1_out1 (i) := (Product1_out1 (i)) + ((Reshape_out1 (i, h)) * (T_Nm (h)));
         end loop;

      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Product1'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/T_Nm'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/B_tot'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Product3'

      for i in 1 .. 2 loop
         Product3_out1 (i) := ((1.0E+00) / (B_tot)) * (Product1_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Product3'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/B_tot'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Demux'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Constant'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Mux'
      Mux_out1 (1) := Product3_out1 (1);
      Mux_out1 (2) := 0.0E+00;
      Mux_out1 (3) := Product3_out1 (2);
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Mux'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Constant'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/Demux'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/M_yz'

      for i in 1 .. 3 loop
         M_yz (i) := Mux_out1 (i);
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y/M_yz'
   end comp;
end Fails_Y;
--  @EOF
