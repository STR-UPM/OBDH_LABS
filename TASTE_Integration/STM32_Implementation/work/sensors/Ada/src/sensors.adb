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

--  Body file for function Sensors
--  Provided interfaces : Get
--  Required interfaces : 
--  Timers              : 

with interfaces;    use interfaces;
with STM32.Device;  use STM32.Device;
with STM32.ADC;     use STM32.ADC;

package body Sensors is
   
   ADC : Analog_To_Digital_Converter renames ADC_1;
   
   
   procedure Initialize is
      -- specify all channels to be read from this ADC

       All_Regular_Conversions : constant Regular_Channel_Conversions :=
        (1 => (Channel     => Temperature_Sensor.Channel,
               Sample_Time => Sample_144_Cycles),
         2 => (Channel     => VBat.Channel,
               Sample_Time => Sample_144_Cycles)
        );  -- needs 10 us minimum
   begin
      Enable_Clock (Temperature_Sensor.ADC.all);
      Reset_All_ADC_Units;

      Configure_Common_Properties -- for all ADCs
        (Mode           => Independent,
         Prescalar      => PCLK2_Div_2,
         DMA_Mode       => Disabled,
         Sampling_Delay => Sampling_Delay_5_Cycles);

      Configure_Unit
        (ADC,
         Resolution => ADC_Resolution_12_Bits,
         Alignment  => Right_Aligned);

      Configure_Regular_Conversions
        (ADC,
         Trigger     => Software_Triggered,
         Continuous  => False,
         Enable_EOC  => True,
         Conversions => All_Regular_Conversions);

      Enable (ADC);
   end Initialize;

   procedure Get (AD : out asn1SccAnalog_Data_Table) is
      Successful : Boolean;
      type Analog_Signal is (Temperature, Battery);
      Data : array (Analog_Signal) of asn1SccT_UInt16;
      
   begin      
      
      Start_Conversion (ADC);
      for S in Analog_Signal loop
         Poll_For_Status (ADC,
                          Regular_Channel_Conversion_Complete,
                          Successful);
         Data(S) := asn1SccT_UInt16 (Conversion_Value (ADC));
      end loop;
      
      AD.obc_t := Data (Temperature);
      AD.obc_v := Data (Battery);
      
   end Get;


begin
   Initialize;
end Sensors;

