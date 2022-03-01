T_UInt16 = Simulink.AliasType;
T_UInt16.BaseType = 'uint16';
T_UInt16.Description = 'range is (0, 65535)';

T_UInt64 = Simulink.AliasType;
T_UInt64.BaseType = 'uint32';
T_UInt64.Description = 'range is (0, 4294967295)';

T_Float = Simulink.AliasType;
T_Float.BaseType = 'double';
T_Float.Description = 'range is (-3.4e+38, 3.4e+38)';

Mission_Time = Simulink.AliasType;
Mission_Time.BaseType = 'uint32';
Mission_Time.Description = 'range is [0, 4294967295]';

T_B_b_T_member_data=Simulink.BusElement;
T_B_b_T_member_data.Name='element_data';
T_B_b_T_member_data.DataType='double';
T_B_b_T_member_data.Dimensions=15;

T_B_b_T=Simulink.Bus;
T_B_b_T.Elements = [T_B_b_T_member_data ];

T_Omega_member_data=Simulink.BusElement;
T_Omega_member_data.Name='element_data';
T_Omega_member_data.DataType='double';
T_Omega_member_data.Dimensions=3;

T_Omega=Simulink.Bus;
T_Omega.Elements = [T_Omega_member_data ];

T_MT_Working_member_data=Simulink.BusElement;
T_MT_Working_member_data.Name='element_data';
T_MT_Working_member_data.DataType='double';
T_MT_Working_member_data.Dimensions=3;

T_MT_Working=Simulink.Bus;
T_MT_Working.Elements = [T_MT_Working_member_data ];

T_Control_member_data=Simulink.BusElement;
T_Control_member_data.Name='element_data';
T_Control_member_data.DataType='double';
T_Control_member_data.Dimensions=3;

T_Control=Simulink.Bus;
T_Control.Elements = [T_Control_member_data ];

Analog_Data = Simulink.AliasType;
Analog_Data.BaseType = 'uint16';
Analog_Data.Description = 'range is [0, 65535]';

Analog_Data_Table_elem01=Simulink.BusElement;
Analog_Data_Table_elem01.Name='obc_t';
Analog_Data_Table_elem01.DataType='uint16';
Analog_Data_Table_elem01.Dimensions=1;

Analog_Data_Table_elem02=Simulink.BusElement;
Analog_Data_Table_elem02.Name='obc_v';
Analog_Data_Table_elem02.DataType='uint16';
Analog_Data_Table_elem02.Dimensions=1;

Analog_Data_Table = Simulink.Bus;
Analog_Data_Table.Elements = [Analog_Data_Table_elem01 Analog_Data_Table_elem02 ];

Satellite_State_elem01=Simulink.BusElement;
Satellite_State_elem01.Name='timestamp';
Satellite_State_elem01.DataType='uint32';
Satellite_State_elem01.Dimensions=1;

Satellite_State_elem02=Simulink.BusElement;
Satellite_State_elem02.Name='data';
Satellite_State_elem02.DataType='Analog_Data_Table';
Satellite_State_elem02.Dimensions=1;

Satellite_State = Simulink.Bus;
Satellite_State.Elements = [Satellite_State_elem01 Satellite_State_elem02 ];

% Values for Operating-Mode:
Operating_Mode_value_idle = 0;
Operating_Mode_value_coverage = 1;
Operating_Mode = Simulink.AliasType;
Operating_Mode.BaseType = 'int32';
Operating_Mode.Description = 'values of ENUMERATED Operating-Mode';


% Values for TC-Type:
TC_Type_value_open_link = 0;
TC_Type_value_close_link = 1;
TC_Type_value_request_hk = 2;
TC_Type = Simulink.AliasType;
TC_Type.BaseType = 'int32';
TC_Type.Description = 'values of ENUMERATED TC-Type';


TM_Hello_elem01=Simulink.BusElement;
TM_Hello_elem01.Name='tm_timestamp';
TM_Hello_elem01.DataType='uint32';
TM_Hello_elem01.Dimensions=1;

TM_Hello_elem02=Simulink.BusElement;
TM_Hello_elem02.Name='tm_payload';
TM_Hello_elem02.DataType='Satellite_State';
TM_Hello_elem02.Dimensions=1;

TM_Hello = Simulink.Bus;
TM_Hello.Elements = [TM_Hello_elem01 TM_Hello_elem02 ];

TM_Housekeeping_Contents_member_00=Simulink.BusElement;
TM_Housekeeping_Contents_member_00.Name='element_00';
TM_Housekeeping_Contents_member_00.DataType='Satellite_State';
TM_Housekeeping_Contents_member_00.Dimensions=1;

TM_Housekeeping_Contents_member_01=Simulink.BusElement;
TM_Housekeeping_Contents_member_01.Name='element_01';
TM_Housekeeping_Contents_member_01.DataType='Satellite_State';
TM_Housekeeping_Contents_member_01.Dimensions=1;

TM_Housekeeping_Contents_member_02=Simulink.BusElement;
TM_Housekeeping_Contents_member_02.Name='element_02';
TM_Housekeeping_Contents_member_02.DataType='Satellite_State';
TM_Housekeeping_Contents_member_02.Dimensions=1;

TM_Housekeeping_Contents_member_03=Simulink.BusElement;
TM_Housekeeping_Contents_member_03.Name='element_03';
TM_Housekeeping_Contents_member_03.DataType='Satellite_State';
TM_Housekeeping_Contents_member_03.Dimensions=1;

TM_Housekeeping_Contents_member_length=Simulink.BusElement;
TM_Housekeeping_Contents_member_length.Name='length';
TM_Housekeeping_Contents_member_length.DataType='int32';
TM_Housekeeping_Contents_member_length.Dimensions=1;

TM_Housekeeping_Contents=Simulink.Bus;
TM_Housekeeping_Contents.Elements = [TM_Housekeeping_Contents_member_00 TM_Housekeeping_Contents_member_01 TM_Housekeeping_Contents_member_02 TM_Housekeeping_Contents_member_03 TM_Housekeeping_Contents_member_length];

TM_Housekeeping_elem01=Simulink.BusElement;
TM_Housekeeping_elem01.Name='tm_timestamp';
TM_Housekeeping_elem01.DataType='uint32';
TM_Housekeeping_elem01.Dimensions=1;

TM_Housekeeping_elem02=Simulink.BusElement;
TM_Housekeeping_elem02.Name='tm_payload';
TM_Housekeeping_elem02.DataType='TM_Housekeeping_Contents';
TM_Housekeeping_elem02.Dimensions=1;

TM_Housekeeping = Simulink.Bus;
TM_Housekeeping.Elements = [TM_Housekeeping_elem01 TM_Housekeeping_elem02 ];

TM_Mode_elem01=Simulink.BusElement;
TM_Mode_elem01.Name='tm_timestamp';
TM_Mode_elem01.DataType='uint32';
TM_Mode_elem01.Dimensions=1;

TM_Mode_elem02=Simulink.BusElement;
TM_Mode_elem02.Name='tm_payload';
TM_Mode_elem02.DataType='int32';
TM_Mode_elem02.Dimensions=1;

TM_Mode = Simulink.Bus;
TM_Mode.Elements = [TM_Mode_elem01 TM_Mode_elem02 ];

TM_Error_Contents_member_data=Simulink.BusElement;
TM_Error_Contents_member_data.Name='element_data';
TM_Error_Contents_member_data.DataType='uint8';
TM_Error_Contents_member_data.Dimensions=80;

TM_Error_Contents_member_length=Simulink.BusElement;
TM_Error_Contents_member_length.Name='length';
TM_Error_Contents_member_length.DataType='int32';
TM_Error_Contents_member_length.Dimensions=1;

TM_Error_Contents=Simulink.Bus;
TM_Error_Contents.Elements = [TM_Error_Contents_member_data TM_Error_Contents_member_length];

TM_Error_elem01=Simulink.BusElement;
TM_Error_elem01.Name='tm_timestamp';
TM_Error_elem01.DataType='uint32';
TM_Error_elem01.Dimensions=1;

TM_Error_elem02=Simulink.BusElement;
TM_Error_elem02.Name='tm_payload';
TM_Error_elem02.DataType='TM_Error_Contents';
TM_Error_elem02.Dimensions=1;

TM_Error = Simulink.Bus;
TM_Error.Elements = [TM_Error_elem01 TM_Error_elem02 ];

TM_Type_elem01=Simulink.BusElement;
TM_Type_elem01.Name='choiceIdx';
TM_Type_elem01.DataType='uint8';
TM_Type_elem01.Dimensions=1;

TM_Type_elem02=Simulink.BusElement;
TM_Type_elem02.Name='hello';
TM_Type_elem02.DataType='TM_Hello';
TM_Type_elem02.Dimensions=1;

TM_Type_elem03=Simulink.BusElement;
TM_Type_elem03.Name='hk';
TM_Type_elem03.DataType='TM_Housekeeping';
TM_Type_elem03.Dimensions=1;

TM_Type_elem04=Simulink.BusElement;
TM_Type_elem04.Name='mode';
TM_Type_elem04.DataType='TM_Mode';
TM_Type_elem04.Dimensions=1;

TM_Type_elem05=Simulink.BusElement;
TM_Type_elem05.Name='err';
TM_Type_elem05.DataType='TM_Error';
TM_Type_elem05.Dimensions=1;

TM_Type = Simulink.Bus;
TM_Type.Elements = [TM_Type_elem01 TM_Type_elem02 TM_Type_elem03 TM_Type_elem04 TM_Type_elem05 ];

T_Int32 = Simulink.AliasType;
T_Int32.BaseType = 'int32';
T_Int32.Description = 'range is (-2147483648, 2147483647)';

T_UInt32 = Simulink.AliasType;
T_UInt32.BaseType = 'uint32';
T_UInt32.Description = 'range is (0, 4294967295)';

T_Int8 = Simulink.AliasType;
T_Int8.BaseType = 'int8';
T_Int8.Description = 'range is (-128, 127)';

T_UInt8 = Simulink.AliasType;
T_UInt8.BaseType = 'uint8';
T_UInt8.Description = 'range is (0, 255)';

T_Boolean = Simulink.AliasType;
T_Boolean.BaseType = 'boolean';
T_Boolean.Description = 'A simple BOOLEAN';

