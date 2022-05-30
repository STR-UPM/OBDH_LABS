------------------------------------------------------------------------------
--                                                                          --
--          Copyright (C) 2022 Universidad Politécnica de Madrid            --
--                                                                          --
-- This is free software;  you can redistribute it  and/or modify it  under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  This software is distributed in the hope  that it will be useful, --
-- but WITHOUT ANY WARRANTY;  without even the implied warranty of MERCHAN- --
-- TABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public --
-- License for  more details.  You should have  received  a copy of the GNU --
-- General  Public  License  distributed  with  this  software;   see  file --
-- COPYING3.  If not, go to http://www.gnu.org/licenses for a complete copy --
-- of the license.                                                          --
--                                                                          --
------------------------------------------------------------------------------

--  Body file for function TTC
--  Provided interfaces : HK_Task, TC, TC_Task, TM_Basic_Task, TM_Error, TM_Mode
--  Required interfaces : Current_Mode, Get, Process_TC, TM
--  Timers              : 


with Ada.Real_Time;

use  Ada.Real_Time;

package body Ttc is
   
   Orange_Led : asn1SccLED := asn1Sccorange_led;
   
   -- Internal subprorgrams:
   
   function Timestamp return asn1SccT_UInt64;
   
   function Pack_TM_Hello return asn1SccTm_Type;

   -------------
   -- HK_Task --
   -------------

   procedure Hk_Task is
      TM_HK : asn1SccTm_Type (hk_PRESENT);
      Reading_Success : asn1SccT_Boolean;
   begin
      TM_HK.hk.tm_payload := asn1SccTM_Housekeeping_Contents_Init;
      TM_HK.hk.tm_timestamp := Timestamp;
      for I in TM_HK.hk.tm_payload.Data'Range loop
         Get (TM_HK.hk.tm_payload.Data(I), Reading_Success);
         exit when not Reading_Success;
      end loop;

      TM (TM_HK);
   end Hk_Task;
   
   --------
   -- TC --
   --------
   
   procedure Tc (Telecommand : in out asn1SccTc_Type) is
      Red_Led : asn1SccLED := asn1Sccred_led;
   begin
      Process_TC (Telecommand);
   end Tc;
   
   -------------------
   -- TM_Basic_Task --
   -------------------
   
   procedure Tm_Basic_Task is
      Curr_Mode : asn1SccOperating_Mode;
      TM_Hello : asn1SccTm_Type := Pack_TM_Hello;
      Green_Led : asn1SccLED := asn1Sccgreen_led;
   begin
      Current_Mode (Curr_Mode);
      case Curr_Mode is
         when asn1SccIdle =>
            TM (TM_Hello);
         when others =>
            null;
         end case;
   end Tm_Basic_Task;
   
   --------------
   -- TM_Error --
   --------------
   
   procedure Tm_Error (Contents : in out asn1SccTm_Error_Contents) is
      TM_Error : asn1SccTM_Type (err_PRESENT);
   begin
      TM_Error.err.tm_timestamp := Timestamp;
      TM_Error.err.tm_payload   := Contents;
      TM (TM_Error);
   end Tm_Error;
   
   -------------
   -- TM_Mode --
   -------------
   
   procedure Tm_Mode (op_mode : in out asn1SccOperating_Mode) is
      TM_Mode : asn1SccTM_Type (mode_PRESENT);
   begin
      TM_Mode.mode.tm_timestamp := Timestamp;
      TM_Mode.mode.tm_payload   := op_mode;
      TM (TM_Mode);
   end Tm_Mode;
   
   ---------------
   -- Timestamp --
   ---------------

   function Timestamp return asn1SccT_UInt64 is
      SC : Seconds_Count;
      TS : Time_Span;
      T  : asn1SccT_UInt64;
   begin
      Split(Clock, SC, TS);
      T := asn1SccT_UInt64(SC);
      return T;
   end Timestamp;
   
   -------------------
   -- Pack_TM_Hello --
   -------------------
   
   function Pack_TM_Hello return asn1SccTm_Type is
      TM_Hello : asn1SccTm_Type (hello_PRESENT);
   begin
      TM_Hello.hello.tm_timestamp := Timestamp;
      Last (TM_Hello.hello.tm_payload);      
      return TM_Hello;
   end Pack_TM_Hello;

begin
   null;
end Ttc;

