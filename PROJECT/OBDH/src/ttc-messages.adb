------------------------------------------------------------------------------
--                                                                          --
--          Copyright (C) 2020  Universidad Politécnica de Madrid           --
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
-- of the license.
--                                                                          --
------------------------------------------------------------------------------

with Platform.Data.Images;   use Platform.Data.Images;
with Storage;

with Ada.Strings.Fixed;       use Ada.Strings.Fixed;
with Ada.Characters.Handling; use Ada.Characters.Handling;
with Ada.Characters.Latin_1;  use Ada.Characters.Latin_1;

package body TTC.Messages is

   Max_HK_Lenght : constant := 4; -- maximum size, limited by secondary stack

   -- internal subprograms

   function Timestamp return String;
   -- timestamp to be prepended to all messages

   --------
   -- TC --
   --------

   function TC (TC_Message : String) return TC_Type is
      Message : constant String := To_Upper (TC_Message);
   begin
      if Count (Message,"OPEN") > 0 then
         return Open_Link;
      elsif Count (Message, "CLOSE") > 0 then
         return Close_Link;
      elsif Count (Message, "REQUEST") > 0 then
         return Request_HK;
      else
         return Error;
      end if;
   end TC;

   --------------
   -- TM_Hello --
   --------------

   function TM_Hello (S : State) return String is
      Data : constant Analog_Data_Table  := S.Data;
      TS   : constant Mission_Time       := S.Timestamp;
      OBC_T_Value : constant Analog_Data := Data (OBC_T);
      OBC_V_Value : constant Analog_Data := Data (OBC_V);
   begin
      return Timestamp & " | HELLO " & Image(TS)
        & ":" & Image(OBC_T_Value)
        & ":" & Image(OBC_V_Value)
        & CR & LF;
   end TM_Hello;

   ---------------------
   -- TM_Housekeeping --
   ---------------------

   function TM_Housekeeping (Length : Positive := 1) return String is

      Size           : constant Positive := Integer'Min(Length, Max_HK_Lenght);

      Line_Length    : constant := 41;
      Line           : String (1..Line_Length);

      Padding_Length : constant := 19;
      Padding        : constant String (1..Padding_Length) := (others => ' ');

      Buffer_Length  : constant Positive := Size*Line_Length;
      Buffer         : String (1..Buffer_Length) := (others => NUL);

      S              : State;
      N              : Natural := 0; -- line number in HK log
      Index          : Positive;     -- position of next line in buffer

   begin
      while not Storage.Empty and N < Size loop
         N := N + 1;
         Storage.Get (S);
         Move (Padding & Image(S.Timestamp)
               & ":" & Image(S.Data(OBC_T))
               & ":" & Image(S.Data(OBC_V))
               & CR & LF,
               Line);
         Index := (N-1)*Line_Length + 1;
         Overwrite (Buffer, Index, Line);
      end loop;
      return Timestamp & " | HK LOG" & CR & LF
        & Buffer(1..N*Line_Length);
   end TM_Housekeeping;

   -------------
   -- TM_Mode --
   -------------

   function TM_Mode (M : Operating_Mode) return String is
   begin
      return Timestamp & " | MODE " & M'Img
        & CR & LF;
   end TM_Mode;

   --------------
   -- TM_Error --
   --------------

   function TM_Error (Message : String) return String is
   begin
      return Timestamp & " | ERROR " & Message
        & CR & LF;
   end TM_Error;

   ---------------
   -- Timestamp --
   ---------------

   function Timestamp return String is
      SC : Seconds_Count;
      TS : Time_Span;
      T  : Mission_Time;
   begin
      Split(Clock, SC, TS);
      T := Mission_Time(SC);
      return Image(T);
   end Timestamp;

end TTC.Messages;

