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

--  Body file for function Platform
--  Provided interfaces : HK_Tick
--  Required interfaces : Get, Put
--  Timers              : 

with Ada.Real_Time;

use  Ada.Real_Time;

package body Platform is
      
   -------------------------
   -- Private subprograms --
   -------------------------
   
   procedure Get (S : out asn1SccSatellite_State) is
      Data  : asn1SccAnalog_Data_Table;
      SC    : Seconds_Count;
      TS    : Time_Span;
   begin
      Get (Data);
      Split (Clock, SC, TS);
      S.Data := Data;
      S.Timestamp :=  asn1SccT_UInt64 (SC);
   end Get;
   
   ------------------------------
   -- Public subprograms (PIs) --
   ------------------------------

   procedure Hk_Tick is
      S : asn1SccSatellite_State;
      Blue_Led : asn1SccLED := asn1Sccblue_led;
   begin
      Get (S);
      Put (S);      
      Toggle_Led (Blue_Led);
   end Hk_Tick;

begin
   null;
end Platform;
