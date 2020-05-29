
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

with TTC.Messages;           use TTC.Messages;
with Manager;                use Manager;
with Manager.Operations;     use Manager.Operations;
with Storage;

with Serial_IO.Blocking;     use Serial_IO.Blocking;
with Peripherals_Blocking ;  use Peripherals_Blocking;
with Message_Buffers;        use Message_Buffers;

package body TTC is

   -- Message buffers

   Outgoing : aliased Message (Physical_Size => 1024); -- arbitrary size
   Incoming : aliased Message (Physical_Size => 1024); -- arbitrary size

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      Initialize (COM);
      Configure (COM, Baud_Rate => 115_200);
   end Initialize;

   ----------
   -- Send --
   ----------

   procedure Send (Message : String) is
   begin
      Set (Outgoing, Message);
      Put (COM, Outgoing'Unchecked_Access);
   end Send;


   -------------------
   -- Basic_TM_Task --
   -------------------

   task body Basic_TM_Task is
      Next_Time : Time := Clock + Start_Delay;
   begin
      loop
         delay until Next_Time;
         case Current_Mode is
            when Idle =>
               Send (TM_Hello(Storage.Last));
            when others =>
               null;
         end case;
         Next_Time := Next_Time + Basic_TM_Period;
      end loop;
   end Basic_TM_Task;

   -------------
   -- TC_task --
   -------------

   task body TC_Task is
      Next_Time : Time := Clock + Start_Delay;
   begin
      Set_Terminator (Incoming, To => ASCII.CR);
      loop
         delay until Next_Time;
         Get_TC:
         begin
            Get (COM, Incoming'Unchecked_Access);
            Process_TC (TC(Content(Incoming)));
            Next_Time := Clock + TC_Period;
         exception
            when Constraint_Error =>  -- empty TC
               Send (TM_Error("NULL TC"));
         end Get_TC;
      end loop;
   end TC_Task;

end TTC;
