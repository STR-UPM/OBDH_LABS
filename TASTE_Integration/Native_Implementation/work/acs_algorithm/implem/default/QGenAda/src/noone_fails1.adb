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

package body Noone_Fails1 is

   procedure initOutputs (M_xyz : out Float_Array_3) is
   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/Noone Fails1/M_xyz'

      for i in 1 .. 3 loop
         M_xyz (i) := 0.0E+00;
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/Noone Fails1/M_xyz'
   end initOutputs;

   procedure comp (M : Float_Array_3; M_xyz : out Float_Array_3) is
   begin
      --  Block 'Step/Subsystem/If Fail Recalculate/Noone Fails1/M'
      --  Block 'Step/Subsystem/If Fail Recalculate/Noone Fails1/M_xyz'

      for i in 1 .. 3 loop
         M_xyz (i) := M (i);
      end loop;

      --  End Block 'Step/Subsystem/If Fail Recalculate/Noone Fails1/M_xyz'
      --  End Block 'Step/Subsystem/If Fail Recalculate/Noone Fails1/M'
   end comp;
end Noone_Fails1;
--  @EOF
