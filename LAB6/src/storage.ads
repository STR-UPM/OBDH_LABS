------------------------------------------------------------------------------
--                                                                          --
--          Copyright (C) 2020 Universidad Politécnica de Madrid           --
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

with Housekeeping.Data; use Housekeeping.Data;

package Storage is

   procedure Put (Data : State);
   -- Store a data state
   -- Overwrite the stored value even if has not been consumed
   -- (it is a fresh value)

   procedure Get (Data : out State);
   -- Get the last stored data state
   -- Waits if there is no fresh data value

private

   protected Buffer
     with Priority => 20
   is
      procedure Put (Data : State);
      entry Get (Data : out State);
   private
      Value : State;
      Fresh : Boolean := False;
   end Buffer;

   procedure Put (Data : State)     renames Buffer.Put;
   procedure Get (Data : out State) renames Buffer.Get;

end Storage;
