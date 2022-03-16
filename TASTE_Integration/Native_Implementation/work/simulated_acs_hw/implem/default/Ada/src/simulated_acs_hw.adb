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

--  Body file for function Simulated_ACS_HW
--  Provided interfaces : Read_MGM, control_MGT
--  Required interfaces : 
--  Timers              : 

with Ada.Text_IO,
     GNAT.Sockets,
     Ada.Exceptions;

use Ada.Text_IO,
    GNAT.Sockets,
    Ada.Exceptions;

package body Simulated_Acs_Hw is
   
   Address  : Sock_Addr_Type;
   Server   : Socket_Type;
   Socket   : Socket_Type;
   Channel  : Stream_Access;
   
   -------------------------
   -- Private subprograms --
   -------------------------
   
   procedure Initialize is
   begin

      Address.Addr := Inet_Addr ("127.0.0.1");
      Address.Port := 5000;

      Create_Socket (Server);

      Set_Socket_Option
        (Server,
         Socket_Level,
         (Reuse_Address, True));
      Set_Socket_Option
        (Server,
         Socket_Level,
         (Receive_Timeout, Timeout => 20.0)); -- seconds


      Bind_Socket (Server, Address);
      Listen_Socket (Server);
      Accept_Socket (Server, Socket, Address);

      Channel := Stream (Socket);
   exception
      when E: Socket_Error =>
         Put_Line ("init" & Exception_Message (E));
      when others =>
         Put_Line ("init exception");
   end Initialize;
   
   ------------------------
   -- PIs Implementation --
   ------------------------

   procedure Read_Mgm (BBT : out asn1SccT_B_B_T) is
   begin
      
      for i in BBT.Data'Range loop
         BBT.Data(i) := asn1SccT_Float (Float'Input (Channel)); --  Long_Float
      end loop;
      
   exception
         
      when E: Socket_Error =>
         Put_Line ("get" & Exception_Message (E));
      when others =>
         Put_Line ("get exception");
         
   end Read_Mgm;
   
   
   procedure Control_Mgt (Control : in out asn1SccT_Control) is
      F: Float;
   begin
      
      for i in Control.Data'Range loop
         F := Float (Control.Data (i));
         Float'Output (Channel, F);
      end loop;
      
   exception
         
      when E: Socket_Error =>
         Put_Line ("put" & Exception_Message (E));
      when others =>
         Put_Line ("put exception");
         
   end Control_Mgt;


begin
   
   Initialize;
   Put_Line("[Simulated_ACS_HW] Started.");
   
end Simulated_Acs_Hw;

