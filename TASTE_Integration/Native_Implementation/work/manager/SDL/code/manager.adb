-- This file was generated automatically by OpenGEODE: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

package body Manager is
   CS_Only : constant := 1;
   procedure Execute_Transition (Id : Integer);
   procedure Current_Mode_Transition is
      begin
         case ctxt.state is
            when asn1Sccwait =>
               Execute_Transition (CS_Only);
            when others =>
               Execute_Transition (CS_Only);
         end case;
      end Current_Mode_Transition;
      

   procedure Process_TC_Transition is
      begin
         case ctxt.state is
            when asn1Sccwait =>
               Execute_Transition (CS_Only);
            when others =>
               Execute_Transition (CS_Only);
         end case;
      end Process_TC_Transition;
      

   procedure Coverage_Timer is
      begin
         case ctxt.state is
            when asn1Sccwait =>
               Execute_Transition (CS_Only);
            when others =>
               Execute_Transition (CS_Only);
         end case;
      end Coverage_Timer;
      

   procedure Execute_Transition (Id : Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE Wait (13,15) at None, None
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
end Manager;