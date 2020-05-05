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

with TTC;          use TTC;
with TTC.Messages; use TTC.Messages;

with STM32.Board;

package body Manager is

   -----------------
   -- System_Mode --
   -----------------

   protected System_Mode is
      function Current_Mode return Operating_Mode;
      procedure Set_Mode (To : Operating_Mode);
      entry Await_Coverage;
   private
      Mode : Operating_Mode := Idle;
   end System_Mode;

   ------------------
   -- Current_Mode --
   ------------------

   function Current_Mode return Operating_Mode is
   begin
      return System_Mode.Current_Mode;
   end Current_Mode;

   --------------
   -- Set_Mode --
   --------------

   procedure Set_Mode (To : Operating_Mode) is
   begin
      System_Mode.Set_Mode(To);
      case To is
         when Idle =>
            STM32.Board.Orange_LED.Clear;
         when Coverage =>
            STM32.Board.Orange_LED.Set;
      end case;
   end Set_Mode;

   -----------------
   -- PO body --
   -----------------

   protected body System_Mode is

      function Current_Mode return Operating_Mode is
      begin
         return Mode;
      end Current_Mode;

      procedure Set_Mode (To : Operating_Mode) is
      begin
         Mode := To;
      end Set_Mode;

      entry Await_Coverage when Mode = Coverage is
      begin
         null;
      end Await_Coverage;

   end System_Mode;

   --------------------
   -- Coverage_Timer --
   --------------------

   task body Coverage_Timer is
   begin
      loop
         System_Mode.Await_Coverage;
         delay until Clock + Coverage_Window_Length;
         if Current_Mode = Coverage then
            Send (TM_Mode(Idle));
            Set_Mode(Idle);
         end if;
      end loop;
   end Coverage_Timer;

end Manager;
