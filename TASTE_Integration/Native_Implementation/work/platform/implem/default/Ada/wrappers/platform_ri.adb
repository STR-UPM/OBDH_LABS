-- DO NOT EDIT THIS FILE, IT WILL BE OVERWRITTEN DURING THE BUILD
-- Generated by Kazoo (templates/glue/language_wrappers/ri_adb/function.tmplt)
-- Date : 2022-03-01 18:05:09

package body Platform_RI is

   procedure Get
      (Ad : out asn1SccAnalog_Data_Table) is
      procedure C_Get
         (Ad : out asn1SccAnalog_Data_Table)
         with Import,
              Convention => C,
              Link_Name  => "platform_RI_Get";
   begin
         C_Get (AD);
   end Get;
   
   
   
   procedure Put
      (In_Data : in out asn1SccSatellite_State) is
      procedure C_Put
         (In_Data : in out asn1SccSatellite_State)
         with Import,
              Convention => C,
              Link_Name  => "platform_RI_Put";
   begin
         C_Put (In_Data);
   end Put;

end Platform_RI;
