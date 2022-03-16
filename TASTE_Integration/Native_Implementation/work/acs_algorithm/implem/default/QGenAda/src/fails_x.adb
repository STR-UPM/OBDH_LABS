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

package body Fails_X is

   procedure initOutputs (M_yz : out Float_Array_3) is
   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/M_yz'

      for i in 1 .. 3 loop
         M_yz (i) := 0.0E+00;
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/M_yz'
   end initOutputs;

   procedure comp
      (B_tot : Float;
       b : Float_Array_3;
       T_Nm : Float_Array_3;
       M_yz : out Float_Array_3)
   is
      Mux_1_out1 : Float_Array_6;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix
   --  x-fails/Mux/OutDataPort1

      Reshape_out1 : Float_Array_2_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix
   --  x-fails/Reshape/OutDataPort1

      Product1_out1 : Float_Array_2;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails
   --  X/Product1/OutDataPort1

      Product3_out1 : Float_Array_2;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails
   --  X/Product3/OutDataPort1

      Mux_out1 : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Fails
   --  X/Mux/OutDataPort1

   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Fcn9'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Fcn8'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Fcn7'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Fcn6'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Fcn5'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Fcn10'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/b'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Mux'
      Mux_1_out1 (1) := b (3);
      Mux_1_out1 (2) := -(b (2));
      Mux_1_out1 (3) := Float ((Long_Float ((b (2)) * (b (3)))) / ((Long_Float (b (1))) + ((1.0E-10) * (Qgen_Boolean_To_Long_Float.Boolean_To_Long_Float ((b (1)) = (0.0E+00))))));
      Mux_1_out1 (4) := Float ((Long_Float ((1.0E+00) - (Qgen_Pow_Float.pow (b (2), Float (2.0E+00))))) / ((Long_Float (b (1))) + ((1.0E-10) * (Qgen_Boolean_To_Long_Float.Boolean_To_Long_Float ((b (1)) = (0.0E+00))))));
      Mux_1_out1 (5) := Float ((Long_Float (-((1.0E+00) - (Qgen_Pow_Float.pow (b (3), Float (2.0E+00)))))) / ((Long_Float (b (1))) + ((1.0E-10) * (Qgen_Boolean_To_Long_Float.Boolean_To_Long_Float ((b (1)) = (0.0E+00))))));
      Mux_1_out1 (6) := Float ((Long_Float (-((b (2)) * (b (3))))) / ((Long_Float (b (1))) + ((1.0E-10) * (Qgen_Boolean_To_Long_Float.Boolean_To_Long_Float ((b (1)) = (0.0E+00))))));
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Mux'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/b'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Fcn10'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Fcn5'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Fcn6'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Fcn7'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Fcn8'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Fcn9'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Reshape'

      for Idx in 0 .. 5 loop
         Reshape_out1 ((Qgen_Mod_Integer.Mod_Fun (Idx, Integer (2))) + (1), ((Idx) / (2)) + (1)) := Mux_1_out1 ((Idx) + (1));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Matrix x-fails/Reshape'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/T_Nm'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Product1'

      for i in 1 .. 2 loop
         Product1_out1 (i) := (Reshape_out1 (i, 1)) * (T_Nm (1));

         for h in 2 .. 3 loop
            Product1_out1 (i) := (Product1_out1 (i)) + ((Reshape_out1 (i, h)) * (T_Nm (h)));
         end loop;

      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Product1'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/T_Nm'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/B_tot'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Product3'

      for i in 1 .. 2 loop
         Product3_out1 (i) := ((1.0E+00) / (B_tot)) * (Product1_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Product3'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/B_tot'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Constant'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Mux'
      Mux_out1 (1) := 0.0E+00;

      for Idx1 in 1 .. 2 loop
         Mux_out1 ((Idx1) + (1)) := Product3_out1 (Idx1);
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Mux'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/Constant'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/M_yz'

      for i in 1 .. 3 loop
         M_yz (i) := Mux_out1 (i);
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X/M_yz'
   end comp;
end Fails_X;
--  @EOF
