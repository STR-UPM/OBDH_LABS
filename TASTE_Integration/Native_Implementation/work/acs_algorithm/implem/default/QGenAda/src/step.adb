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

with Qgen_Boolean_To_Float;
with q_2_Fails; use q_2_Fails;
with qgen_type_Float_Array_15; use qgen_type_Float_Array_15;
with qgen_type_Float_Array_5; use qgen_type_Float_Array_5;
with qgen_type_Float_Array_6; use qgen_type_Float_Array_6;
with Noone_Fails1; use Noone_Fails1;
with Qgen_Pow_Float;
with qgen_type_Boolean_Array_3; use qgen_type_Boolean_Array_3;
with Qgen_Boolean_To_Unsigned_8;
with q_1_Fail; use q_1_Fail;
with qgen_type_Long_Float_Array_5; use qgen_type_Long_Float_Array_5;
with qgen_type_Long_Float_Array_6; use qgen_type_Long_Float_Array_6;

package body Step is

   procedure initStates (State : in out Step_State) is
   begin
      --  Block 'Step/Subsystem/discretization/Memory'

      for i in 1 .. 3 loop
         State.Memory_memory (i) := 0.0E+00;
      end loop;

      --  End Block 'Step/Subsystem/discretization/Memory'

      --  Block 'Step/Subsystem/If Fail Recalculate/Noone Fails1'
      State.Noone_Fails1_enabled := True;
      --  End Block 'Step/Subsystem/If Fail Recalculate/Noone Fails1'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail'
      State.q_1_Fail_enabled := True;
      q_1_Fail.initStates (State.q_1_Fail_memory);
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail'

      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails'
      State.q_2_Fails_enabled := True;
      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails'
   end initStates;

   procedure initOutputs (State : in out Step_State) is
   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/Noone Fails1'
      Noone_Fails1.initOutputs (State.Noone_Fails1_M_xyz);
      --  End Block 'Step/Subsystem/If Fail Recalculate/Noone Fails1'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail'
      q_1_Fail.initOutputs (State.q_1_Fail_M_xyz, State.q_1_Fail_memory);
      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail'

      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails'
      q_2_Fails.initOutputs (State.q_2_Fails_M_xyz);
      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails'
   end initOutputs;

   procedure comp
      (BBT : T_B_b_T;
       Omega : T_Omega;
       K_PB : T_Float;
       K_PE : T_Float;
       M_M : T_Float;
       MT_Working : T_MT_Working;
       Control : out T_Control;
       State : in out Step_State)
   is
      time_out1 : Float_Array_5;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Polyfit/time/OutDataPort1

      Sxx_out1 : Float_Array_5;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Polyfit/Sxx/OutDataPort1

      Sum1_1_out1 : Float;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Polyfit/Sum1/OutDataPort1

      time_1_out1 : Float_Array_5;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Polyfit1/time/OutDataPort1

      Sxx_1_out1 : Float_Array_5;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Polyfit1/Sxx/OutDataPort1

      Sum1_1_1_out1 : Float;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Polyfit1/Sum1/OutDataPort1

      time_2_out1 : Float_Array_5;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Polyfit2/time/OutDataPort1

      Sxx_2_out1 : Float_Array_5;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Polyfit2/Sxx/OutDataPort1

      Sum1_2_out1 : Float;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Polyfit2/Sum1/OutDataPort1

      Cast_To_Single_out1 : Float_Array_15;
   --  Output from Step/Cast To Single/OutDataPort1

      Selector3_out1 : Float_Array_5;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Selector3/OutDataPort1

      Selector4_out1 : Float_Array_5;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Selector4/OutDataPort1

      Selector5_out1 : Float_Array_5;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Selector5/OutDataPort1

      Sxy_out1 : Float_Array_5;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Polyfit/Sxy/OutDataPort1

      Sxy_1_out1 : Float_Array_5;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Polyfit1/Sxy/OutDataPort1

      Sxy_2_out1 : Float_Array_5;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Polyfit2/Sxy/OutDataPort1

      Mux_1_out1 : Float_Array_3;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Derivative/Mux/OutDataPort1

      Cast_To_Single1_out1 : Float_Array_3;
   --  Output from Step/Cast To Single1/OutDataPort1

      a_elements_out1 : Float_Array_6;
   --  Output from Step/Subsystem/Control law/Cross Product/a
   --  elements/OutDataPort1

      Gain_1_1_out1 : Float_Array_3;
   --  Output from Step/Subsystem/Magnetic field
   --  calculation/Media/Gain/OutDataPort1

      b_elements_out1 : Float_Array_6;
   --  Output from Step/Subsystem/Control law/Cross Product/b
   --  elements/OutDataPort1

      Element_product_out1 : Float_Array_6;
   --  Output from Step/Subsystem/Control law/Cross Product/Element
   --  product/OutDataPort1

      Gain3_out1 : Float_Array_3;
   --  Output from Step/Subsystem/Control law/Gain3/OutDataPort1

      Cast_To_Single5_out1 : Float_Array_3;
   --  Output from Step/Cast To Single5/OutDataPort1

      Sum1_out1 : Float_Array_3;
   --  Output from Step/Subsystem/If Fail Recalculate/Sum1/OutDataPort1

      Cast_To_Single4_out1 : Float;
   --  Output from Step/Cast To Single4/OutDataPort1

      Mux_out1 : Float_Array_3;
   --  Output from Step/Subsystem/Limitation/Mux/OutDataPort1

      Gain_out1 : Float_Array_3;
   --  Output from Step/Subsystem/Limitation/Gain/OutDataPort1

      Relational_Operator_out1 : Boolean_Array_3;
   --  Output from Step/Subsystem/Limitation/Relational Operator/OutDataPort1

      Relational_Operator1_out1 : Boolean_Array_3;
   --  Output from Step/Subsystem/Limitation/Relational Operator1/OutDataPort1

      Sum1_4_out1 : Float_Array_3;
   --  Output from Step/Subsystem/discretization/Sum1/OutDataPort1

      Gain3_1_out1 : Float_Array_3;
   --  Output from Step/Subsystem/discretization/Gain3/OutDataPort1

      Product_2_out1 : Float_Array_3;
   --  Output from Step/Subsystem/discretization/Product/OutDataPort1

      Control_T_Control_BusCre_out1 : T_Control;
   --  Output from Step/Control_T_Control_BusCre/OutDataPort1

      Selector3_map1 : constant Long_Float_Array_5 := 
(1 => 1.0E+00, 2 => 4.0E+00, 3 => 7.0E+00, 4 => 1.0E+01, 5 => 1.3E+01);
      Selector4_map1 : constant Long_Float_Array_5 := 
(1 => 2.0E+00, 2 => 5.0E+00, 3 => 8.0E+00, 4 => 1.1E+01, 5 => 1.4E+01);
      Selector5_map1 : constant Long_Float_Array_5 := 
(1 => 3.0E+00, 2 => 6.0E+00, 3 => 9.0E+00, 4 => 1.2E+01, 5 => 1.5E+01);
      a_elements_map1 : constant Long_Float_Array_6 := 
(1 => 2.0E+00, 2 => 3.0E+00, 3 => 1.0E+00, 4 => 3.0E+00, 5 => 1.0E+00, 6 => 2.0E+00);
      b_elements_map1 : constant Long_Float_Array_6 := 
(1 => 3.0E+00, 2 => 1.0E+00, 3 => 2.0E+00, 4 => 2.0E+00, 5 => 3.0E+00, 6 => 1.0E+00);
      Tmp : Long_Float_Array_5;
      Tmp_1 : Long_Float_Array_5;
      Tmp_2 : Long_Float_Array_5;
   begin
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/time'

      for Idx in 1 .. 5 loop
         Tmp (Idx) := Long_Float ((1) + ((Idx) - (1)));
      end loop;

      for i in 1 .. 5 loop
         time_out1 (i) := Float ((Tmp (i)) / (5.0E+00));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/time'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sxx'

      for i in 1 .. 5 loop
         Sxx_out1 (i) := (time_out1 (i)) * (time_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sxx'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sum1'
      Sum1_1_out1 := ((((time_out1 (1)) + (time_out1 (2))) + (time_out1 (3))) + (time_out1 (4))) + (time_out1 (5));
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sum1'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/time'

      for Idx in 1 .. 5 loop
         Tmp_1 (Idx) := Long_Float ((1) + ((Idx) - (1)));
      end loop;

      for i in 1 .. 5 loop
         time_1_out1 (i) := Float ((Tmp_1 (i)) / (5.0E+00));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/time'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sxx'

      for i in 1 .. 5 loop
         Sxx_1_out1 (i) := (time_1_out1 (i)) * (time_1_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sxx'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sum1'
      Sum1_1_1_out1 := ((((time_1_out1 (1)) + (time_1_out1 (2))) + (time_1_out1 (3))) + (time_1_out1 (4))) + (time_1_out1 (5));
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sum1'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/time'

      for Idx in 1 .. 5 loop
         Tmp_2 (Idx) := Long_Float ((1) + ((Idx) - (1)));
      end loop;

      for i in 1 .. 5 loop
         time_2_out1 (i) := Float ((Tmp_2 (i)) / (5.0E+00));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/time'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sxx'

      for i in 1 .. 5 loop
         Sxx_2_out1 (i) := (time_2_out1 (i)) * (time_2_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sxx'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sum1'
      Sum1_2_out1 := ((((time_2_out1 (1)) + (time_2_out1 (2))) + (time_2_out1 (3))) + (time_2_out1 (4))) + (time_2_out1 (5));
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sum1'

      --  Block 'Step/BBT_T_B_b_T_BusSel'
      --  Block 'Step/BBT'
      --  Block 'Step/Cast To Single'

      for i in 1 .. 15 loop
         Cast_To_Single_out1 (i) := Float (BBT.element_data (i));
      end loop;

      --  End Block 'Step/Cast To Single'
      --  End Block 'Step/BBT'
      --  End Block 'Step/BBT_T_B_b_T_BusSel'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Selector3'

      for Idx1 in 1 .. 5 loop
         Selector3_out1 (Idx1) := Cast_To_Single_out1 (Integer (Selector3_map1 (Idx1)));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Selector3'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Selector4'

      for Idx1 in 1 .. 5 loop
         Selector4_out1 (Idx1) := Cast_To_Single_out1 (Integer (Selector4_map1 (Idx1)));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Selector4'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Selector5'

      for Idx1 in 1 .. 5 loop
         Selector5_out1 (Idx1) := Cast_To_Single_out1 (Integer (Selector5_map1 (Idx1)));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Selector5'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sxy'

      for i in 1 .. 5 loop
         Sxy_out1 (i) := (time_out1 (i)) * (Selector3_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sxy'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sxy'

      for i in 1 .. 5 loop
         Sxy_1_out1 (i) := (time_1_out1 (i)) * (Selector4_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sxy'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sxy'

      for i in 1 .. 5 loop
         Sxy_2_out1 (i) := (time_2_out1 (i)) * (Selector5_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sxy'

      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Gain2'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sum3'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sum2'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/NSxy'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sum'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/SxSy '
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sum4'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sum5'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/N'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/NSxx'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/SxSx'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/NSx2'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Gain1'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sum3'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sum2'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/NSxy'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sum'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/SxSy '
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sum4'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sum5'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/N'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/NSxx'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/SxSx'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/NSx2'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Gain'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sum3'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sum2'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/NSxy'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sum'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/SxSy '
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sum4'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sum5'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/N'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/NSxx'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/SxSx'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/NSx2'
      --  Block 'Step/Subsystem/Magnetic field calculation/Derivative/Mux'
      Mux_1_out1 (1) := Float ((-1.0E+00) * ((((5.0E+00) * (((((Sxy_out1 (1)) + (Sxy_out1 (2))) + (Sxy_out1 (3))) + (Sxy_out1 (4))) + (Sxy_out1 (5)))) - ((Sum1_1_out1) * (((((Selector3_out1 (1)) + (Selector3_out1 (2))) + (Selector3_out1 (3))) + (Selector3_out1 (4))) + (Selector3_out1 (5))))) / (((5.0E+00) * (((((Sxx_out1 (1)) + (Sxx_out1 (2))) + (Sxx_out1 (3))) + (Sxx_out1 (4))) + (Sxx_out1 (5)))) - ((Sum1_1_out1) * (Sum1_1_out1)))));
      Mux_1_out1 (2) := Float ((-1.0E+00) * ((((5.0E+00) * (((((Sxy_1_out1 (1)) + (Sxy_1_out1 (2))) + (Sxy_1_out1 (3))) + (Sxy_1_out1 (4))) + (Sxy_1_out1 (5)))) - ((Sum1_1_1_out1) * (((((Selector4_out1 (1)) + (Selector4_out1 (2))) + (Selector4_out1 (3))) + (Selector4_out1 (4))) + (Selector4_out1 (5))))) / (((5.0E+00) * (((((Sxx_1_out1 (1)) + (Sxx_1_out1 (2))) + (Sxx_1_out1 (3))) + (Sxx_1_out1 (4))) + (Sxx_1_out1 (5)))) - ((Sum1_1_1_out1) * (Sum1_1_1_out1)))));
      Mux_1_out1 (3) := Float ((-1.0E+00) * ((((5.0E+00) * (((((Sxy_2_out1 (1)) + (Sxy_2_out1 (2))) + (Sxy_2_out1 (3))) + (Sxy_2_out1 (4))) + (Sxy_2_out1 (5)))) - ((Sum1_2_out1) * (((((Selector5_out1 (1)) + (Selector5_out1 (2))) + (Selector5_out1 (3))) + (Selector5_out1 (4))) + (Selector5_out1 (5))))) / (((5.0E+00) * (((((Sxx_2_out1 (1)) + (Sxx_2_out1 (2))) + (Sxx_2_out1 (3))) + (Sxx_2_out1 (4))) + (Sxx_2_out1 (5)))) - ((Sum1_2_out1) * (Sum1_2_out1)))));
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Mux'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/NSx2'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/SxSx'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/NSxx'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/N'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sum5'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sum4'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/SxSy '
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sum'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/NSxy'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sum2'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit/Sum3'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Gain'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/NSx2'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/SxSx'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/NSxx'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/N'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sum5'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sum4'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/SxSy '
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sum'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/NSxy'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sum2'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit1/Sum3'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Gain1'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/NSx2'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/SxSx'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/NSxx'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/N'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sum5'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sum4'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/SxSy '
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sum'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/NSxy'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sum2'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Polyfit2/Sum3'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Derivative/Gain2'

      --  Block 'Step/Omega_T_Omega_BusSel'
      --  Block 'Step/Omega'
      --  Block 'Step/Cast To Single1'

      for i in 1 .. 3 loop
         Cast_To_Single1_out1 (i) := Float (Omega.element_data (i));
      end loop;

      --  End Block 'Step/Cast To Single1'
      --  End Block 'Step/Omega'
      --  End Block 'Step/Omega_T_Omega_BusSel'

      --  Block 'Step/Subsystem/Control law/Cross Product/a elements'

      for Idx1 in 1 .. 6 loop
         a_elements_out1 (Idx1) := Cast_To_Single1_out1 (Integer (a_elements_map1 (Idx1)));
      end loop;

      --  End Block 'Step/Subsystem/Control law/Cross Product/a elements'

      --  Block 'Step/Subsystem/Magnetic field calculation/Media/Sum1'
      --  Block 'Step/Subsystem/Magnetic field calculation/Media/Demux'
      --  Block 'Step/Subsystem/Magnetic field calculation/Media/Gain'

      for i in 1 .. 3 loop
         Gain_1_1_out1 (i) := Float (((1.0E+00) / (5.0E+00)) * (Long_Float (((((Cast_To_Single_out1 (i)) + (Cast_To_Single_out1 ((i) + (3)))) + (Cast_To_Single_out1 ((i) + (6)))) + (Cast_To_Single_out1 ((i) + (9)))) + (Cast_To_Single_out1 ((i) + (12))))));
      end loop;

      --  End Block 'Step/Subsystem/Magnetic field calculation/Media/Gain'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Media/Demux'
      --  End Block 'Step/Subsystem/Magnetic field calculation/Media/Sum1'

      --  Block 'Step/Subsystem/Control law/Cross Product/b elements'

      for Idx1 in 1 .. 6 loop
         b_elements_out1 (Idx1) := Gain_1_1_out1 (Integer (b_elements_map1 (Idx1)));
      end loop;

      --  End Block 'Step/Subsystem/Control law/Cross Product/b elements'

      --  Block 'Step/Subsystem/Control law/Cross Product/Element product'

      for i in 1 .. 6 loop
         Element_product_out1 (i) := (a_elements_out1 (i)) * (b_elements_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/Control law/Cross Product/Element product'

      --  Block 'Step/Subsystem/Control law/Product'
      --  Block 'Step/Subsystem/Control law/Cross Product/Add3'
      --  Block 'Step/Subsystem/Control law/Cross Product/Demux2'
      --  Block 'Step/Subsystem/Control law/Sum'
      --  Block 'Step/K_PB'
      --  Block 'Step/Cast To Single2'
      --  Block 'Step/Cast To Single3'
      --  Block 'Step/K_PE'
      --  Block 'Step/Subsystem/Control law/Math Function'
      --  Block 'Step/Subsystem/Control law/Gain3'

      for i in 1 .. 3 loop
         Gain3_out1 (i) := (-1.0E+00) * ((((Mux_1_out1 (i)) + ((Element_product_out1 (i)) - (Element_product_out1 ((i) + (3))))) * (Float (K_PB))) * (Qgen_Pow_Float.pow (Float (1.0E+01), Float (K_PE))));
      end loop;

      --  End Block 'Step/Subsystem/Control law/Gain3'
      --  End Block 'Step/Subsystem/Control law/Math Function'
      --  End Block 'Step/K_PE'
      --  End Block 'Step/Cast To Single3'
      --  End Block 'Step/Cast To Single2'
      --  End Block 'Step/K_PB'
      --  End Block 'Step/Subsystem/Control law/Sum'
      --  End Block 'Step/Subsystem/Control law/Cross Product/Demux2'
      --  End Block 'Step/Subsystem/Control law/Cross Product/Add3'
      --  End Block 'Step/Subsystem/Control law/Product'

      --  Block 'Step/MT_Working_T_MT_Working_BusSel'
      --  Block 'Step/MT_Working'
      --  Block 'Step/Cast To Single5'

      for i in 1 .. 3 loop
         Cast_To_Single5_out1 (i) := Float (MT_Working.element_data (i));
      end loop;

      --  End Block 'Step/Cast To Single5'
      --  End Block 'Step/MT_Working'
      --  End Block 'Step/MT_Working_T_MT_Working_BusSel'

      --  Block 'Step/Subsystem/If Fail Recalculate/Sum of Elements2'
      --  Block 'Step/Subsystem/If Fail Recalculate/Compare To Constant3'
      State.Compare_To_Constant3_out1 := Qgen_Boolean_To_Unsigned_8.Boolean_To_Unsigned_8 ((((Cast_To_Single5_out1 (1)) + (Cast_To_Single5_out1 (2))) + (Cast_To_Single5_out1 (3))) = (3.0E+00));
      --  End Block 'Step/Subsystem/If Fail Recalculate/Compare To Constant3'
      --  End Block 'Step/Subsystem/If Fail Recalculate/Sum of Elements2'

      --  Block 'Step/Subsystem/If Fail Recalculate/Noone Fails1'

      if (State.Compare_To_Constant3_out1) > (0) then
         State.Noone_Fails1_enabled := True;
         Noone_Fails1.comp (Gain3_out1, State.Noone_Fails1_M_xyz);
      else
         State.Noone_Fails1_enabled := False;
      end if;

      --  End Block 'Step/Subsystem/If Fail Recalculate/Noone Fails1'

      --  Block 'Step/Subsystem/If Fail Recalculate/Sum of Elements1'
      --  Block 'Step/Subsystem/If Fail Recalculate/Compare To Constant2'
      State.Compare_To_Constant2_out1 := Qgen_Boolean_To_Unsigned_8.Boolean_To_Unsigned_8 ((((Cast_To_Single5_out1 (1)) + (Cast_To_Single5_out1 (2))) + (Cast_To_Single5_out1 (3))) = (2.0E+00));
      --  End Block 'Step/Subsystem/If Fail Recalculate/Compare To Constant2'
      --  End Block 'Step/Subsystem/If Fail Recalculate/Sum of Elements1'

      --  Block 'Step/Subsystem/If Fail Recalculate/1 Fail'

      if (State.Compare_To_Constant2_out1) > (0) then
         State.q_1_Fail_enabled := True;
         q_1_Fail.comp (Cast_To_Single5_out1, Gain3_out1, Gain_1_1_out1, State.q_1_Fail_M_xyz, State.q_1_Fail_memory);
      else
         State.q_1_Fail_enabled := False;
      end if;

      --  End Block 'Step/Subsystem/If Fail Recalculate/1 Fail'

      --  Block 'Step/Subsystem/If Fail Recalculate/Sum of Elements3'
      --  Block 'Step/Subsystem/If Fail Recalculate/Compare To Constant1'
      State.Compare_To_Constant1_out1 := Qgen_Boolean_To_Unsigned_8.Boolean_To_Unsigned_8 ((((Cast_To_Single5_out1 (1)) + (Cast_To_Single5_out1 (2))) + (Cast_To_Single5_out1 (3))) = (1.0E+00));
      --  End Block 'Step/Subsystem/If Fail Recalculate/Compare To Constant1'
      --  End Block 'Step/Subsystem/If Fail Recalculate/Sum of Elements3'

      --  Block 'Step/Subsystem/If Fail Recalculate/2 Fails'

      if (State.Compare_To_Constant1_out1) > (0) then
         State.q_2_Fails_enabled := True;
         q_2_Fails.comp (Cast_To_Single5_out1, Gain3_out1, State.q_2_Fails_M_xyz);
      else
         State.q_2_Fails_enabled := False;
      end if;

      --  End Block 'Step/Subsystem/If Fail Recalculate/2 Fails'

      --  Block 'Step/Subsystem/If Fail Recalculate/Sum1'

      for i in 1 .. 3 loop
         Sum1_out1 (i) := ((State.Noone_Fails1_M_xyz (i)) + (State.q_1_Fail_M_xyz (i))) + (State.q_2_Fails_M_xyz (i));
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/Sum1'

      --  Block 'Step/M_M'
      --  Block 'Step/Cast To Single4'
      Cast_To_Single4_out1 := Float (M_M);
      --  End Block 'Step/Cast To Single4'
      --  End Block 'Step/M_M'

      --  Block 'Step/Subsystem/Limitation/Mux'
      Mux_out1 (1) := Cast_To_Single4_out1;
      Mux_out1 (2) := Cast_To_Single4_out1;
      Mux_out1 (3) := Cast_To_Single4_out1;
      --  End Block 'Step/Subsystem/Limitation/Mux'

      --  Block 'Step/Subsystem/Limitation/Gain'

      for i in 1 .. 3 loop
         Gain_out1 (i) := (2.5E-01) * (Mux_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/Limitation/Gain'

      --  Block 'Step/Subsystem/Limitation/Relational Operator'

      for i in 1 .. 3 loop
         Relational_Operator_out1 (i) := (Sum1_out1 (i)) >= (Gain_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/Limitation/Relational Operator'

      --  Block 'Step/Subsystem/Limitation/Gain1'
      --  Block 'Step/Subsystem/Limitation/Relational Operator1'

      for i in 1 .. 3 loop
         Relational_Operator1_out1 (i) := (Sum1_out1 (i)) <= ((-1.0E+00) * (Gain_out1 (i)));
      end loop;

      --  End Block 'Step/Subsystem/Limitation/Relational Operator1'
      --  End Block 'Step/Subsystem/Limitation/Gain1'

      --  Block 'Step/Subsystem/discretization/Gain4'
      --  Block 'Step/Subsystem/discretization/Gain5'
      --  Block 'Step/Subsystem/Limitation/Product1'
      --  Block 'Step/Subsystem/Limitation/Gain2'
      --  Block 'Step/Subsystem/Limitation/Data Type Conversion2'
      --  Block 'Step/Subsystem/Limitation/Product2'
      --  Block 'Step/Subsystem/Limitation/Logical Operator2'
      --  Block 'Step/Subsystem/Limitation/Logical Operator'
      --  Block 'Step/Subsystem/Limitation/Logical Operator1'
      --  Block 'Step/Subsystem/Limitation/Data Type Conversion1'
      --  Block 'Step/Subsystem/Limitation/Product'
      --  Block 'Step/Subsystem/Limitation/Data Type Conversion'
      --  Block 'Step/Subsystem/Limitation/Add'
      --  Block 'Step/Subsystem/discretization/Product1'
      --  Block 'Step/Subsystem/discretization/Memory'
      --  Block 'Step/Subsystem/discretization/Sum1'

      for i in 1 .. 3 loop
         Sum1_4_out1 (i) := Float ((Long_Float (State.Memory_memory (i))) + ((5.0E-01) * ((((1.0E+00) / (2.5E-01)) * (Long_Float ((((Qgen_Boolean_To_Float.Boolean_To_Float (Relational_Operator_out1 (i))) * (Gain_out1 (i))) + ((Sum1_out1 (i)) * (Qgen_Boolean_To_Float.Boolean_To_Float ((not (Relational_Operator_out1 (i)))
            and then (not (Relational_Operator1_out1 (i))))))) + (((-1.0E+00) * (Gain_out1 (i))) * (Qgen_Boolean_To_Float.Boolean_To_Float (Relational_Operator1_out1 (i))))))) / (Long_Float (Cast_To_Single4_out1)))));
      end loop;

      --  End Block 'Step/Subsystem/discretization/Sum1'
      --  End Block 'Step/Subsystem/discretization/Memory'
      --  End Block 'Step/Subsystem/discretization/Product1'
      --  End Block 'Step/Subsystem/Limitation/Add'
      --  End Block 'Step/Subsystem/Limitation/Data Type Conversion'
      --  End Block 'Step/Subsystem/Limitation/Product'
      --  End Block 'Step/Subsystem/Limitation/Data Type Conversion1'
      --  End Block 'Step/Subsystem/Limitation/Logical Operator1'
      --  End Block 'Step/Subsystem/Limitation/Logical Operator'
      --  End Block 'Step/Subsystem/Limitation/Logical Operator2'
      --  End Block 'Step/Subsystem/Limitation/Product2'
      --  End Block 'Step/Subsystem/Limitation/Data Type Conversion2'
      --  End Block 'Step/Subsystem/Limitation/Gain2'
      --  End Block 'Step/Subsystem/Limitation/Product1'
      --  End Block 'Step/Subsystem/discretization/Gain5'
      --  End Block 'Step/Subsystem/discretization/Gain4'

      --  Block 'Step/Subsystem/discretization/Rounding Function'
      --  Block 'Step/Subsystem/discretization/Gain1'
      --  Block 'Step/Subsystem/discretization/Gain3'

      for i in 1 .. 3 loop
         Gain3_1_out1 (i) := (1.0E-01) * (Float'Rounding ((1.0E+01) * (Sum1_4_out1 (i))));
      end loop;

      --  End Block 'Step/Subsystem/discretization/Gain3'
      --  End Block 'Step/Subsystem/discretization/Gain1'
      --  End Block 'Step/Subsystem/discretization/Rounding Function'

      --  Block 'Step/Subsystem/discretization/Data Type Conversion'
      --  Block 'Step/Subsystem/discretization/Abs'
      --  Block 'Step/Subsystem/discretization/Compare To Constant'
      --  Block 'Step/Subsystem/discretization/Product'

      for i in 1 .. 3 loop
         Product_2_out1 (i) := (Gain3_1_out1 (i)) * (Qgen_Boolean_To_Float.Boolean_To_Float ((abs (Gain3_1_out1 (i))) >= (2.0E-01)));
      end loop;

      --  End Block 'Step/Subsystem/discretization/Product'
      --  End Block 'Step/Subsystem/discretization/Compare To Constant'
      --  End Block 'Step/Subsystem/discretization/Abs'
      --  End Block 'Step/Subsystem/discretization/Data Type Conversion'

      --  Block 'Step/Cast To Double'
      --  Block 'Step/Control_T_Control_BusCre'

      for i in 1 .. 3 loop
         Control_T_Control_BusCre_out1.element_data (i) := Long_Float (Product_2_out1 (i));
      end loop;

      --  End Block 'Step/Control_T_Control_BusCre'
      --  End Block 'Step/Cast To Double'

      --  Block 'Step/Control'
      Control := Control_T_Control_BusCre_out1;
      --  End Block 'Step/Control'

      --  Block 'Step/Subsystem/discretization/Sum'

      for i in 1 .. 3 loop
         State.Sum_3_out1 (i) := (Sum1_4_out1 (i)) - (Product_2_out1 (i));
      end loop;

      --  End Block 'Step/Subsystem/discretization/Sum'
   end comp;

   procedure up (State : in out Step_State) is
   begin
      --  update 'Step/Subsystem/discretization/Memory'

      for i in 1 .. 3 loop
         State.Memory_memory (i) := State.Sum_3_out1 (i);
      end loop;

      --  End update 'Step/Subsystem/discretization/Memory'
   end up;
end Step;
--  @EOF
