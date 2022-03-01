-- This file was generated automatically by OpenGEODE: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

package body Manager is
   idle_0_keep_going_START : constant := 4;
   idle_0_START : constant := 5;
   coverage_0_keep_going_START : constant := 6;
   coverage_0_START : constant := 7;
   procedure Current_Mode(Current: in out asn1SccOperating_Mode) is
      begin
         --  Current := Current_Mode (66,17)
         Current := ctxt.Current_Mode;
         --  Current_Mode_Transition (None,None)
         Current_Mode_Transition;
         --  RETURN  (None,None) at 196, 403
         return;
      end Current_Mode;
      

   procedure Process_TC(Tc: in out asn1SccTC_Type) is
      begin
         --  Last_TC := TC (81,17)
         ctxt.Last_TC := TC;
         --  Process_TC_Transition (None,None)
         Process_TC_Transition;
         --  RETURN  (None,None) at 236, 308
         return;
      end Process_TC;
      

   procedure Current_Mode_Transition is
      begin
         case ctxt.state is
            when others =>
               Execute_Transition (CS_Only);
         end case;
      end Current_Mode_Transition;
      

   procedure Process_TC_Transition is
      begin
         case ctxt.state is
            when others =>
               Execute_Transition (CS_Only);
         end case;
      end Process_TC_Transition;
      

   procedure Coverage_Timer is
      begin
         case ctxt.state is
            when others =>
               Execute_Transition (CS_Only);
         end case;
      end Coverage_Timer;
      

   procedure Execute_Transition (Id : Integer) is
      trId : Integer := Id;
      tmp14 : asn1SccT_UInt32;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  Writeln ('[Manager] started.') (88,13)
                  Put ("[Manager] started.");
                  New_Line;
                  --  NEXT_STATE Idle (90,18) at 1339, 125
                  trId := idle_0_START;
                  goto Continuous_Signals;
               when 1 =>
                  --  NEXT_STATE Idle (103,22) at 1497, 372
                  trId := idle_0_START;
                  goto Continuous_Signals;
               when 2 =>
                  --  Writeln ('[Manager] Processing TC in Coverage.') (107,17)
                  Put ("[Manager] Processing TC in Coverage.");
                  New_Line;
                  --  DECISION Last_TC (-1,-1)
                  --  ANSWER close_link (111,17)
                  if (ctxt.Last_TC) = asn1Sccclose_link then
                     --  NEXT_STATE Idle (113,30) at 1635, 537
                     trId := idle_0_START;
                     goto Continuous_Signals;
                     --  ANSWER request_hk (115,17)
                  elsif (ctxt.Last_TC) = asn1Sccrequest_hk then
                     --  HK_Task (117,27)
                     RI_0_HK_Task;
                     --  NEXT_STATE Coverage (119,30) at 1778, 583
                     trId := Coverage_0_keep_going_START;
                     goto Continuous_Signals;
                     --  ANSWER ELSE (None,None)
                  else
                     --  TM_Error (Coverage_Error_Msg) (124,27)
                     RI_0_TM_Error(ctxt.Coverage_Error_Msg);
                     --  NEXT_STATE Coverage (126,30) at 1944, 586
                     trId := Coverage_0_keep_going_START;
                     goto Continuous_Signals;
                  end if;
               when 3 =>
                  --  Writeln ('[Manager] Processing TC in Idle.') (139,17)
                  Put ("[Manager] Processing TC in Idle.");
                  New_Line;
                  --  DECISION Last_TC (-1,-1)
                  --  ANSWER open_link (143,17)
                  if (ctxt.Last_TC) = asn1Sccopen_link then
                     --  NEXT_STATE Coverage (145,30) at 1021, 528
                     trId := coverage_0_START;
                     goto Continuous_Signals;
                     --  ANSWER ELSE (None,None)
                  else
                     --  TM_Error (Idle_Error_Msg) (149,27)
                     RI_0_TM_Error(ctxt.Idle_Error_Msg);
                     --  NEXT_STATE Idle (151,30) at 1204, 583
                     trId := Idle_0_keep_going_START;
                     goto Continuous_Signals;
                  end if;
               when 4 =>
                  --  RETURN  (None,None) at 681, 147
                  return;
               when 5 =>
                  --  Current_Mode := idle (13,21)
                  ctxt.Current_Mode := asn1Sccidle;
                  --  TM_Mode (Current_Mode) (15,23)
                  RI_0_TM_Mode(ctxt.Current_Mode);
                  --  Reset_Timer (Coverage_Timer) (17,21)
                  RESET_Coverage_Timer;
                  --  RETURN  (None,None) at 423, 306
                  return;
               when 6 =>
                  --  RETURN  (None,None) at 991, 252
                  return;
               when 7 =>
                  --  Current_Mode := coverage (31,21)
                  ctxt.Current_Mode := asn1Scccoverage;
                  --  TM_Mode (Current_Mode) (33,23)
                  RI_0_TM_Mode(ctxt.Current_Mode);
                  --  Set_Timer (10000, Coverage_Timer) (35,21)
                  tmp14 := 10000;
                  SET_Coverage_Timer (tmp14);
                  --  RETURN  (None,None) at 769, 404
                  return;
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