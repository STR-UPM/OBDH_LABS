-- convert raw temperature sensor readings to degrees Celsius

with HK_Data;             use HK_Data;
with HK_Data.Converter;   use HK_Data.Converter;
with TTC_Data.Strings;    use TTC_Data.Strings;

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Temperature is
   Raw_Value : Integer;
begin
   Put_line("Convert raw values from a temperature sensor to Celsius");
   Put_Line("Enter an integer value, or 0 to exit");
   loop
      Put("> ");
      Get(Raw_Value);
      exit when Raw_Value <= 0;
      Put_Line(Image(Temperature(Sensor_Reading(Raw_Value))));
   end loop;
end Temperature;
