-- This file was generated automatically by OpenGEODE: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

package body Manager is
   CS_Only : constant := 8;
   idle_0_START : constant := 4;
   idle_0_first_time_START : constant := 5;
   coverage_0_first_time_START : constant := 6;
   coverage_0_START : constant := 7;
   procedure Execute_Transition (Id : Integer);
   procedure Current_Mode(Current: in out asn1SccOperating_Mode) is
      begin
         --  Current := Current_Mode (68,17)
         Current := ctxt.Current_Mode;
         --  Current_Mode_Transition (None,None)
         Current_Mode_Transition;
         --  RETURN  (None,None) at 196, 403
         return;
      end Current_Mode;
      

   procedure Process_TC(Tc: in out asn1SccTC_Type) is
      begin
         --  Last_TC := TC (83,17)
         ctxt.Last_TC := TC;
         --  Process_TC_Transition (None,None)
         Process_TC_Transition;
         --  RETURN  (None,None) at 236, 308
         return;
      end Process_TC;
      

   procedure Current_Mode_Transition is
      begin
               Execute_Transition (CS_Only);
      end Current_Mode_Transition;
      

   procedure Process_TC_Transition is
      begin
               Execute_Transition (CS_Only);
      end Process_TC_Transition;
      

   procedure Coverage_Timer is
      begin
               Execute_Transition (CS_Only);
      end Coverage_Timer;
      

   procedure Execute_Transition (Id : Integer) is
      trId : Integer := Id;
      tmp1445 : asn1SccT_UInt32;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  Writeln ('[Manager] started.') (90,13)
                  Put ("[Manager] started.");
                  New_Line;
                  --  NEXT_STATE Idle (92,18) at 1339, 121
                  trId := Idle_0_First_Time_START;
                  goto Continuous_Signals;
               when 1 =>
                  --  NEXT_STATE Idle (103,22) at 1394, 377
                  trId := idle_0_START;
                  goto Continuous_Signals;
               when 2 =>
                  --  DECISION Last_TC (-1,-1)
                  --  ANSWER close_link (109,17)
                  if (ctxt.Last_TC) = asn1Sccclose_link then
                     --  NEXT_STATE Idle (111,30) at 1505, 492
                     trId := idle_0_START;
                     goto Continuous_Signals;
                     --  ANSWER request_hk (113,17)
                  elsif (ctxt.Last_TC) = asn1Sccrequest_hk then
                     --  HK_Task (115,27)
                     RI_0_HK_Task;
                     --  NEXT_STATE Coverage (117,30) at 1599, 538
                     trId := coverage_0_START;
                     goto Continuous_Signals;
                     --  ANSWER ELSE (None,None)
                  else
                     --  TM_Error (Coverage_Error_Msg) (121,27)
                     RI_0_TM_Error(ctxt.Coverage_Error_Msg);
                     --  NEXT_STATE Coverage (123,30) at 1771, 541
                     trId := coverage_0_START;
                     goto Continuous_Signals;
                  end if;
               when 3 =>
                  --  DECISION Last_TC (-1,-1)
                  --  ANSWER open_link (137,17)
                  if (ctxt.Last_TC) = asn1Sccopen_link then
                     --  NEXT_STATE Coverage (139,30) at 1024, 481
                     trId := Coverage_0_First_Time_START;
                     goto Continuous_Signals;
                     --  ANSWER ELSE (None,None)
                  else
                     --  TM_Error (Idle_Error_Msg) (144,27)
                     RI_0_TM_Error(ctxt.Idle_Error_Msg);
                     --  NEXT_STATE Idle (146,30) at 1235, 536
                     trId := idle_0_START;
                     goto Continuous_Signals;
                  end if;
               when 4 =>
                  --  RETURN  (None,None) at 599, 147
                  return;
               when 5 =>
                  --  Current_Mode := idle (15,21)
                  ctxt.Current_Mode := asn1Sccidle;
                  --  TM_Mode (Current_Mode) (17,23)
                  RI_0_TM_Mode(ctxt.Current_Mode);
                  --  Reset_Timer (Coverage_Timer) (19,21)
                  RESET_Coverage_Timer;
                  --  RETURN  (None,None) at 423, 306
                  return;
               when 6 =>
                  --  Current_Mode := coverage (29,21)
                  ctxt.Current_Mode := asn1Scccoverage;
                  --  TM_Mode (Current_Mode) (31,23)
                  RI_0_TM_Mode(ctxt.Current_Mode);
                  --  Set_Timer (10000, Coverage_Timer) (33,21)
                  tmp1445 := 10000;
                  SET_Coverage_Timer (tmp1445);
                  --  RETURN  (None,None) at 769, 404
                  return;
               when 7 =>
                  --  RETURN  (None,None) at 991, 252
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
