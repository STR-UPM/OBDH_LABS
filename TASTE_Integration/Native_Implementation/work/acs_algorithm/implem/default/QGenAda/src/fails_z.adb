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

package body Fails_Z is

   procedure initOutputs (M_xy : out Float_Array_3) is
   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/M_xy'

      for i in 1 .. 3 loop
         M_xy (i) := 0.0E+00;
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/M_xy'
   end initOutputs;

   procedure comp
      (B_tot : Float;
       b : Float_Array_3;
       T_Nm : Float_Array_3;
       M_xy : out Float_Array_3)
   is
      Mux_1_out1 : Float_Array_6;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix
   --  z-fails/Mux/OutDataPort1

      Reshape_out1 : Float_Array_2_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix
   --  z-fails/Reshape/OutDataPort1

      Product1_out1 : Float_Array_2;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails
   --  Z/Product1/OutDataPort1

      Product3_out1 : Float_Array_2;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails
   --  Z/Product3/OutDataPort1

      Mux_out1 : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails
   --  Z/Mux/OutDataPort1

   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn7'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn6'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn3'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn2'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn10'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn1'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/b'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Mux'
      Mux_1_out1 (1) := Float ((Long_Float ((b (2)) * (b (1)))) / ((Long_Float (b (3))) + ((1.0E-10) * (Qgen_Boolean_To_Long_Float.Boolean_To_Long_Float ((b (3)) = (0.0E+00))))));
      Mux_1_out1 (2) := Float ((Long_Float ((1.0E+00) - (Qgen_Pow_Float.pow (b (1), Float (2.0E+00))))) / ((Long_Float (b (3))) + ((1.0E-10) * (Qgen_Boolean_To_Long_Float.Boolean_To_Long_Float ((b (3)) = (0.0E+00))))));
      Mux_1_out1 (3) := Float ((Long_Float (-((1.0E+00) - (Qgen_Pow_Float.pow (b (2), Float (2.0E+00)))))) / ((Long_Float (b (3))) + ((1.0E-10) * (Qgen_Boolean_To_Long_Float.Boolean_To_Long_Float ((b (3)) = (0.0E+00))))));
      Mux_1_out1 (4) := Float ((Long_Float (-((b (2)) * (b (1))))) / ((Long_Float (b (3))) + ((1.0E-10) * (Qgen_Boolean_To_Long_Float.Boolean_To_Long_Float ((b (3)) = (0.0E+00))))));
      Mux_1_out1 (5) := b (2);
      Mux_1_out1 (6) := -(b (1));
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Mux'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/b'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn1'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn10'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn2'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn3'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn6'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Fcn7'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Reshape'

      for Idx in 0 .. 5 loop
         Reshape_out1 ((Qgen_Mod_Integer.Mod_Fun (Idx, Integer (2))) + (1), ((Idx) / (2)) + (1)) := Mux_1_out1 ((Idx) + (1));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Matrix z-fails/Reshape'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/T_Nm'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Product1'

      for i in 1 .. 2 loop
         Product1_out1 (i) := (Reshape_out1 (i, 1)) * (T_Nm (1));

         for h in 2 .. 3 loop
            Product1_out1 (i) := (Product1_out1 (i)) + ((Reshape_out1 (i, h)) * (T_Nm (h)));
         end loop;

      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Product1'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/T_Nm'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/B_tot'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Product3'

      for i in 1 .. 2 loop
         Product3_out1 (i) := ((1.0E+00) / (B_tot)) * (Product1_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Product3'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/B_tot'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Constant'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Mux'

      for Idx1 in 1 .. 2 loop
         Mux_out1 (Idx1) := Product3_out1 (Idx1);
      end loop;

      Mux_out1 (3) := 0.0E+00;
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Mux'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/Constant'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/M_xy'

      for i in 1 .. 3 loop
         M_xy (i) := Mux_out1 (i);
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z/M_xy'
   end comp;
end Fails_Z;
--  @EOF
