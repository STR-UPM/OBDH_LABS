clear all
clc

%Call attitude control variables
attitude_control

%Inertial tensor (kg-m^2)
Inertia_tensor = [2.8  0  0;...%2.8
                  0  2.8  0;...%2.8
                  0  0  2];%2

%------orbital parameters-------

date=[2014,03,21];             %Date in (year, month, day)
t0 = 2456738.000000; %juliandate(date);         %Date in Julian Date
%DecT0=decyear(date);           %Date in decimal year
DecT0= 2018;
h        =  600000;%700000;            %orbital altitude(m)
Re       =  6378137;           %Earth's mean radius (m)
r        =  h + Re;
G        =  6.67*10^-11;       %Earth's gravitational constant(m^3/kg*s^2)
M        =  5.97*10^24 ;       %mass of the Earth (kg)
global omega_o
omega_o  =  (1/r)*(G*M/r)^0.5; %orbital frequency (rad/s) |v|/|r| 
RAAN_rt  =  2.02e-7;           %(rad/s) = 1(deg/day)

inc     = 1.7231;              %rad corresponding to h = 700 km and RAAN=1deg/day
mu_0     = pi*4e-7;            %permeabitility of free space (H/m) or (V.s/A.m)
omega_e  = 7.29e-5;            %rad/s equal to ne day

%-------gaussian coeffiecients-----

g01         =  -29496.6;  %nT
g11         =  -1586.3;   %nT
h11         =   4944.;   %nT

H0 = norm([g01,g11,h11]);
dip_coel = acos(g01/H0);
dip_long = atan2(h11,g11);

TA_0 = 0;

%-----Initial launch point-----
theta_g0 = 0;  

%-----Initial Attitude----- Body respect inertial

phi0    = 0*pi/180;   %initial first euler angle
theta0  = 30*pi/180;  %initial second euler angle
psi0    = 60*pi/180;  %initial third euler angle

quat_0  = E321_to_quat([phi0, theta0, psi0])  ; %initial quaternion
 
%-----Initial Anugular velocity----- Body respect inertial

omega_BI_B0 = [0.1;-0.1;-0.1];

%----------Upper atmosphere model 

air_density =[1.2250e+000  3.8990e-002  1.7740e-002  8.2790e-003  3.9720e-003  1.9950e-003  1.0570e-003 ...
              5.8210e-004  3.2060e-004  1.7180e-004  8.7700e-005  4.1780e-005  1.9050e-005  8.3370e-006 ...
              3.3960e-006  1.3430e-006  5.2970e-007  9.6610e-008  2.4380e-008  8.4840e-009  3.8450e-009 ...
              2.0700e-009  1.2440e-009  5.4640e-010  2.7890e-010  7.2480e-011  2.4180e-011  9.1580e-012 ...
              3.7250e-012  1.5850e-012  6.9670e-013  1.4540e-013  3.6140e-014  1.1700e-014  5.2450e-015 ...
              3.0190e-015];

altitude =[    0       25000       30000       35000       40000       45000       50000       55000 ...
           60000       65000       70000       75000       80000       85000       90000       95000 ...
          100000      110000      120000      130000      140000      150000      160000      180000 ...
          200000      250000      300000      350000      400000      450000      500000      600000 ...
          700000      800000      900000     1000000];
      
 CD = 2;
      
%------Solar radiation---------
load('Analemma');

A = [0.25  0.25  0.25  0.25  0.25  0.25]; %surface area [Ax+ Ax- Ay+ Ay- Az+ Az-] (m??)
r_cm_B = [(0.156e-2 * 42.3 + 0.16917 * 22)/64.3,...
          (0.248e-1 * 42.3 + -0.35948e-1 * 22)/64.3,...
          (0.164e-2 * 42.3 + 0.14518e-3 * 22)/64.3];  % center of mass in body frame
N_B = [  1     0    0,...
        -1     0    0,...
         0     1    0,...
         0    -1    0,...
         0     0    1,...
         0     0   -1] ; %surface normal unit vector
light_speed = 3e8;
c_spec   = [0.02   0.02   0.02    0.02    0.02    0.02];  %Specular coefficient
c_diffus = [0.02   0.02   0.02    0.02    0.02    0.02];  %Diffuse coefficient
r_co_s_B = [0   0   0]; %solar center of pressure in body frame
r_cp_a_B = [0 0 0];
r_cp_s_B = [0 0 0];

%------Power generation---------

AE= asin(Re/(Re+h)); % Angle for eclipses.

M_SR=1377*0.967; 
E_BOL=0.28; %Panel efficience BOL
T_p=28;   %Temperature in �C of the panel esays
T_o=67;   %Temperature in �C of operation

Cell_Area=30.18*1e-4;  %the area of each cell in m^2
Ncell_Xp=40;
Ncell_Xn=40;
Ncell_Yp=40;
Ncell_Yn=40;
Ncell_Zp=20;
Ncell_Zn=00;

D_T=0.5;  %Efficience degradation rate because of T
D_R=2.75; %Anual efficience degradation because of radiation 

TD_T=(1-(T_o-T_p)*D_T/100); %Total degratation because T;
TD_R=(1-D_R/100*2); %Total degradation because radiation, during 2 years.
E_EOL=E_BOL*TD_T*TD_R; % Panel Efficiende EOL

NX= [1 0 0]; % direction of panel normal unit vector
NY= [0 1 0]; % direction of panel normal unit vector
NZ= [0 0 1]; % direction of panel normal unit vector

%Angle cosines and Kelly cosine equivalence

cos50= cos (50/360*2*pi); %limit of cosine law behavior 
cosines =[0.087 0.174  0.500 0.634 0.866]; 
kelly =  [0.000 0.100  0.450 0.635 0.866]; 

%----Other------

K_l = 0.1;