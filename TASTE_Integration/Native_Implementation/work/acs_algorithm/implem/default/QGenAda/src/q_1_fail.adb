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

with qgen_type_Float_Array_6; use qgen_type_Float_Array_6;
with Qgen_Float_To_Boolean;
with Qgen_Pow_Float;
with Ada.Numerics.Elementary_Functions;
with qgen_type_Boolean_Array_3; use qgen_type_Boolean_Array_3;
with Qgen_Boolean_To_Unsigned_8;
with Fails_X; use Fails_X;
with qgen_type_Long_Float_Array_6; use qgen_type_Long_Float_Array_6;
with Interfaces; use Interfaces;
with Fails_Y; use Fails_Y;
with Fails_Z; use Fails_Z;

package body q_1_Fail is

   procedure initStates (State : in out q_1_Fail_State) is
   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X'
      State.Fails_X_enabled := True;
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y'
      State.Fails_Y_enabled := True;
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z'
      State.Fails_Z_enabled := True;
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z'
   end initStates;

   procedure initOutputs
      (M_xyz : out Float_Array_3;
       State : in out q_1_Fail_State)
   is
   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X'
      Fails_X.initOutputs (State.Fails_X_M_yz);
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y'
      Fails_Y.initOutputs (State.Fails_Y_M_yz);
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z'
      Fails_Z.initOutputs (State.Fails_Z_M_xy);
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/M_xyz'

      for i in 1 .. 3 loop
         M_xyz (i) := 0.0E+00;
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/M_xyz'
   end initOutputs;

   procedure comp
      (Fail : Float_Array_3;
       M : Float_Array_3;
       B : Float_Array_3;
       M_xyz : out Float_Array_3;
       State : in out q_1_Fail_State)
   is
      a_elements_out1 : Float_Array_6;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Cross Product/a
   --  elements/OutDataPort1

      b_elements_out1 : Float_Array_6;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Cross Product/b
   --  elements/OutDataPort1

      Sqrt_out1 : Float;
   --  Output from Step/Subsystem/If Fail Recalculate/1
   --  Fail/B_tot/Subsystem/Sqrt/OutDataPort1

      Sum_1_out1 : Float;
   --  Output from Step/Subsystem/If Fail Recalculate/1
   --  Fail/B_tot/Subsystem/Sum/OutDataPort1

      Product4_out1 : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1
   --  Fail/B_tot/Subsystem/Product4/OutDataPort1

      Element_product_out1 : Float_Array_6;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Cross
   --  Product/Element product/OutDataPort1

      Add3_out1 : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Cross
   --  Product/Add3/OutDataPort1

      Logical_Operator_out1 : Boolean_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/1 Fail/Logical
   --  Operator/OutDataPort1

      a_elements_map1 : constant Long_Float_Array_6 := 
(1 => 2.0E+00, 2 => 3.0E+00, 3 => 1.0E+00, 4 => 3.0E+00, 5 => 1.0E+00, 6 => 2.0E+00);
      b_elements_map1 : constant Long_Float_Array_6 := 
(1 => 3.0E+00, 2 => 1.0E+00, 3 => 2.0E+00, 4 => 2.0E+00, 5 => 3.0E+00, 6 => 1.0E+00);
   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/M'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Cross Product/a elements'

      for Idx1 in 1 .. 6 loop
         a_elements_out1 (Idx1) := M (Integer (a_elements_map1 (Idx1)));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Cross Product/a elements'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/M'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Cross Product/b elements'

      for Idx1 in 1 .. 6 loop
         b_elements_out1 (Idx1) := B (Integer (b_elements_map1 (Idx1)));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Cross Product/b elements'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Add'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Math Function'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Math Function1'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Demux'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Math Function2'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Sqrt'
      Sqrt_out1 := Ada.Numerics.Elementary_Functions.Sqrt (((Qgen_Pow_Float.pow (B (1), Float (2.0E+00))) + (Qgen_Pow_Float.pow (B (2), Float (2.0E+00)))) + (Qgen_Pow_Float.pow (B (3), Float (2.0E+00))));
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Sqrt'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Math Function2'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Demux'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Math Function1'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Math Function'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Add'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Compare To Zero'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Sum'
      Sum_1_out1 := (Sqrt_out1) + (Float (Qgen_Boolean_To_Unsigned_8.Boolean_To_Unsigned_8 ((Sqrt_out1) = (0.0E+00))));
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Sum'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Compare To Zero'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Product4'

      for i in 1 .. 3 loop
         Product4_out1 (i) := (B (i)) / (Sum_1_out1);
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B_tot/Subsystem/Product4'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/B'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Cross Product/Element product'

      for i in 1 .. 6 loop
         Element_product_out1 (i) := (a_elements_out1 (i)) * (b_elements_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Cross Product/Element product'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Cross Product/Demux2'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Cross Product/Add3'

      for i in 1 .. 3 loop
         Add3_out1 (i) := (Element_product_out1 (i)) - (Element_product_out1 ((i) + (3)));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Cross Product/Add3'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Cross Product/Demux2'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fail'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Logical Operator'

      for i in 1 .. 3 loop
         Logical_Operator_out1 (i) := not Qgen_Float_To_Boolean.Float_To_Boolean (Fail (i));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Logical Operator'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fail'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Selector'
      State.Selector_out1 := Logical_Operator_out1 (1);
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Selector'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Selector1'
      State.Selector1_out1 := Logical_Operator_out1 (2);
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Selector1'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Selector2'
      State.Selector2_out1 := Logical_Operator_out1 (3);
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Selector2'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X'

      if State.Selector_out1 then
         State.Fails_X_enabled := True;
         Fails_X.comp (Sum_1_out1, Product4_out1, Add3_out1, State.Fails_X_M_yz);
      else
         State.Fails_X_enabled := False;
      end if;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails X'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y'

      if State.Selector1_out1 then
         State.Fails_Y_enabled := True;
         Fails_Y.comp (Sum_1_out1, Product4_out1, Add3_out1, State.Fails_Y_M_yz);
      else
         State.Fails_Y_enabled := False;
      end if;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Y'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z'

      if State.Selector2_out1 then
         State.Fails_Z_enabled := True;
         Fails_Z.comp (Sum_1_out1, Product4_out1, Add3_out1, State.Fails_Z_M_xy);
      else
         State.Fails_Z_enabled := False;
      end if;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Fails Z'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Sum'
      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail/M_xyz'

      for i in 1 .. 3 loop
         M_xyz (i) := ((State.Fails_X_M_yz (i)) + (State.Fails_Y_M_yz (i))) + (State.Fails_Z_M_xy (i));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/M_xyz'
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail/Sum'
   end comp;
end q_1_Fail;
--  @EOF
