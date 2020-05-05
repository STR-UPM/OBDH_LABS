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

-- Storage subsystem

with Platform.Data; use Platform.Data;
with System;

package Storage is

   Capacity : constant Positive := 5;

   procedure Put (Data : State);
   --  Store a state snapshot.
   --  Overwrite the oldest element if the store is full.

   procedure Get (Data : out State);
   --  Extract a state snapshot from the store.
   --  Raise Constraint_Error if the store is empty.

   function Last return State;
   --  Get most recent state snapshot. The data is not erased.
   --  Raise Constraint_Error if the store is empty.

   function  Empty return Boolean;
   --  Test for empty store

   function  Full  return Boolean;
   --  Test for full store

   -- Real-time attributes
   ST_Priority : constant System.Priority := 20;

private

   type Index is mod Capacity;
   type Store is array (Index) of State;

   protected Buffer
     with Priority => ST_Priority
   is
      procedure Put (Data : in  State);
      procedure Get (Data : out State);
      function  Last  return State;
      function  Empty return Boolean;
      function  Full  return Boolean;
   private
      Box      :  Store;
      Next_In  :  Index   := 0; -- next new item
      Last_In  :  Index   := 0; -- newest item in buffer
      Next_Out :  Index   := 0; -- oldest item in buffer
      Count    :  Natural := 0;
   end Buffer;

   procedure Put  (Data : State)     renames Buffer.Put;
   procedure Get  (Data : out State) renames Buffer.Get;
   function Last   return State      renames Buffer.Last;
   function  Empty return Boolean    renames Buffer.Empty;
   function  Full  return Boolean    renames Buffer.Full;

end Storage;
