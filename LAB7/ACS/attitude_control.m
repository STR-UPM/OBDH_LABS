
%Control Nominal
    % Variables que se pueden cambiar desde tierra (pero debe mantenerse un valor nominal de referencia al que volver)

        omega_tx=0;                                                               %[0:0.001:2Pi]    %Commanded angular velocity (rad/s)
        omega_ty=0;                                                               %[0:0.001:2Pi]    %Commanded angular velocity (rad/s)
        omega_tz=0.1;                                                             %[0:0.001:2Pi]    %Commanded angular velocity (rad/s)
        k_pb = 2;                                                                 %[0:1:9]          %Constant of amplification base
        k_pe = 8;                                                                 %[1:1:10]         %Constant of amplification exponent
        MM_Working=[1 1 0];                                                       %[0,1]  each      %Used magnetometers.
        MT_Working=[1 1 1];                                                       %[0,1]  each      %Working magnetorquers.
        m_m=15;                                                                   %[0:1:20]         %Magnetorquer maximum A/m2
        CM_mm01=[-27723, 1088, -239;  -764, -25026, -219; 1299, -416, -23472];    %[0:1:100000]     %FM-007 Calibration Matrix
        CO_mm01=[2.5332,  2.5200, 2.4915];                                        %[0:0.0001:5]     %FM-007 Calibration off set  
        CM_mm02=[-27799, 42,     95; -1261, -26308,  -43; 2693,  458, -24088];    %[0:1:100000]     %FM-008 Calibration Matrix
        CO_mm02=[2.5348,  2.5260, 2.4664];                                        %[0:0.0001:5]     %FM-008 Calibration off set 
        CM_mm03=[9988,0,0; 0, 9989,0; 0,0,10036];                                 %[0:1:100000]     %Bartington Calibration Matrix
        CO_mm03=[0.0008, -0.0006, 0.0007];                                        %[0:0.0001:5]     %Bartington Calibration off set 
   
 %Controles Experimentales           
     % variables of experimental attitude control with photodiodes
     % Constantd of PD control
        k_ep=9.524e-4*10;
        k_ed=0.9524*10;
        %Reconfigurable
        Delta=1e-10;