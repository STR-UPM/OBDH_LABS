-- convert raw temperature sensor readings to degrees Celsius

with HK_Data;             use HK_Data;
with HK_Data.Converter;   use HK_Data.Converter;
with TTC_Data.Strings;    use TTC_Data.Strings;

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
   Raw_Value : Integer;
begin
   loop
      Put("> ");
      Get(Raw_Value);
      exit when Raw_Value <= 0;
      Put_Line(Image(Temperature(Sensor_Reading(Raw_Value))));
   end loop;
end Main;
