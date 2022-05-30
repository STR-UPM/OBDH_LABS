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

--  Body file for function Storage
--  Provided interfaces : Get, Put
--  Required interfaces : 
--  Timers              : 

--  Include Context Parameters (constants defined in the Interface View)
--  with Context_Storage; use Context_Storage; --  Use: storage_ctxt

package body Storage is

   Box_Capacity : constant Positive := 5;
   type Index is mod Box_Capacity;
   type Store is array (Index) of asn1SccSatellite_State;
   
   Box      : Store;
   Next_In  : Index   := 0; --  next new item
   Last_In  : Index   := 0; --  newest item in buffer
   Next_Out : Index   := 0; --  oldest item in buffer
   Count    : Natural := 0; --  # elements in buffer
   
   -------------------------
   -- Private subprograms --
   -------------------------
   
   function Is_Empty return Boolean is
   begin
      return Count = 0;
   end Is_Empty;
   
   function Is_Full return Boolean is
   begin
      return Count >= Box_Capacity;
   end Is_Full;
      
   ------------------------------
   -- Public subprograms (PIs) --
   ------------------------------

   procedure Get (Out_Data : out asn1SccSatellite_State;
                  Success  : out asn1SccT_Boolean) is
   begin
      Success := asn1SccT_Boolean (not Is_Empty);
      if Success then
         Out_Data := Box (Next_Out);
         Next_Out := Next_Out + 1;
         Count    := Count - 1;
      end if;
   end Get;
   
   procedure Last (Out_Data : out asn1SccSatellite_State) is
   begin
      Out_Data := Box (Last_In);
   end Last;
   
   procedure Put (In_Data : in out asn1SccSatellite_State) is
   begin
      Box (Next_In) := In_Data;
      Last_In := Next_In;
      Next_In := Next_In + 1;
      if not Is_Full then
         Count := Count + 1;
      else
         Next_Out := Next_Out + 1;
      end if;
   end Put;

begin
    null;
end Storage;

