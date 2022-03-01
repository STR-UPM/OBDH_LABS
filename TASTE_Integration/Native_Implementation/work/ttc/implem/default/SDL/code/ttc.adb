-- This file was generated automatically by OpenGEODE: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

package body Ttc is
   CS_Only : constant := 1;
   procedure Execute_Transition (Id : Integer);
   procedure HK_Task is
      begin
         case ctxt.state is
            when asn1Sccwait =>
               Execute_Transition (CS_Only);
            when others =>
               Execute_Transition (CS_Only);
         end case;
      end HK_Task;
      

   procedure TC(Telecommand: in out asn1SccTC_Type) is
      begin
         case ctxt.state is
            when asn1Sccwait =>
               Execute_Transition (CS_Only);
            when others =>
               Execute_Transition (CS_Only);
         end case;
      end TC;
      

   procedure TC_Task is
      begin
         case ctxt.state is
            when asn1Sccwait =>
               Execute_Transition (CS_Only);
            when others =>
               Execute_Transition (CS_Only);
         end case;
      end TC_Task;
      

   procedure TM_Basic_Task is
      begin
         case ctxt.state is
            when asn1Sccwait =>
               Execute_Transition (CS_Only);
            when others =>
               Execute_Transition (CS_Only);
         end case;
      end TM_Basic_Task;
      

   procedure TM_Error(Contents: in out asn1SccTM_Error_Contents) is
      begin
         case ctxt.state is
            when asn1Sccwait =>
               Execute_Transition (CS_Only);
            when others =>
               Execute_Transition (CS_Only);
         end case;
      end TM_Error;
      

   procedure TM_Mode(op_mode: in out asn1SccOperating_Mode) is
      begin
         case ctxt.state is
            when asn1Sccwait =>
               Execute_Transition (CS_Only);
            when others =>
               Execute_Transition (CS_Only);
         end case;
      end TM_Mode;
      

   procedure Execute_Transition (Id : Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE Wait (6,15) at None, None
                  trId := -1;
                  ctxt.State := asn1SccWait;
                  goto Continuous_Signals;
               when CS_Only =>
                  trId := -1;
                  goto Continuous_Signals;
               when others =>
                  null;
            end case;
            <<Continuous_Signals>>
            <<Next_Transition>>
         end loop;
      end Execute_Transition;
      

   procedure Startup is
      begin
         Execute_Transition (0);
         ctxt.Init_Done := True;
      end Startup;
   begin
      Startup;
end Ttc;