--  Body file for function Pretty_Formatter
--  Generated by TASTE on 2022-05-30 17:35:08
--  You can edit this file, it will not be overwritten
--  Provided interfaces : TM
--  Required interfaces : TM, Unformatted_TM
--  Timers              : 


package body Pretty_Formatter is

   procedure Tm (Telemetry : in out asn1SccTm_Type) is
   
   begin
      -- TODO: Pretty format TM
      Unformatted_Tm (Telemetry);
   end Tm;


begin
   --  Write your startup code here
   null;

end Pretty_Formatter;

