function Forward(theta_1,theta_2,theta_3,handles) 
d1 = 131;
a1 = 88;
a2 = 400;
a3 = 68;

%% 1111111111111111
H0_1=[ cos(theta_1)     0               -sin(theta_1)      0;
       sin(theta_1)     0               cos(theta_1)       0;
       0                -1              0                  d1;
       0                0       0                          1];
H1_2=[ cos(theta_2)     sin(theta_2)   0                  a2*cos(theta_2);
       sin(theta_2)     -cos(theta_2)    0                  a2*sin(theta_2);
       0                0               1                  0;
       0                0               0                  1];
%% 3
H2_3=[ cos(theta_3)     -sin(theta_3)              0       a3*cos(theta_3);
       sin(theta_3)     cos(theta_3)               0       a3*sin(theta_3);
       0                1               1                   0;
       0                0               0                   1];

T0_3=H0_1*H1_2*H2_3;

%% End effector
pitch = atan2(-T0_3(3,1),sqrt(T0_3(3,2)^2+T0_3(3,3)^2));
roll = atan2(T0_3(3,2)/cos(pitch),T0_3(3,3)/cos(pitch));
yaw = atan2(T0_3(2,1)/cos(pitch),T0_3(1,1)/cos(pitch));

set(handles.ROLL,'string',num2str(roll/pi*180));
set(handles.PITCH,'string',num2str(pitch/pi*180));
set(handles.YAW,'string',num2str(yaw/pi*180));

set(handles.X,'string',num2str(T0_3(1,4)));
set(handles.Y,'string',num2str(T0_3(2,4)));
set(handles.Z,'string',num2str(T0_3(3,4)));
