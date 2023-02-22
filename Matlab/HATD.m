%H_letter
%linear planning
pos_H1 = linear_planning([250 -300 100],[350 -300 100],1);
pos_H2 = linear_planning([350 -300 100],[300 -300 100],1);
pos_H3 = linear_planning([300 -300 100],[300 -250 100],1);
pos_H4 = linear_planning([300 -250 100],[350 -250 100],1);
pos_H5 = linear_planning([350 -250 100],[250 -250 100],1);
%time adjustment
pos_H2(:,1) = pos_H2(:,1)+1;
pos_H3(:,1) = pos_H3(:,1)+2;
pos_H4(:,1) = pos_H4(:,1)+3;
pos_H5(:,1) = pos_H5(:,1)+4;
%pos component merge
pos_H = [pos_H1;pos_H2(2:end,:);pos_H3(2:end,:);pos_H4(2:end,:);pos_H5(2:end,:)];
%A_letter
%linear planning
pos_A1 = linear_planning([250 -250 100],[350 -225 100],1);
pos_A2 = linear_planning([350 -225 100],[250 -200 100],1);
pos_A3 = linear_planning([250 -200 100],[280 -207.5 100],1);
pos_A4 = linear_planning([280 -207.5 100],[280 -242.5 100],1);
pos_A5 = linear_planning([280 -242.5 100],[280 -207.5 100],1);
pos_A6 = linear_planning([280 -207.5 100],[250 -200 100],1);
%time adjustment
pos_A1(:,1) = pos_A1(:,1)+5;
pos_A2(:,1) = pos_A2(:,1)+6;
pos_A3(:,1) = pos_A3(:,1)+7;
pos_A4(:,1) = pos_A4(:,1)+8;
pos_A5(:,1) = pos_A5(:,1)+9;
pos_A6(:,1) = pos_A6(:,1)+10;
%pos component merge
pos_A = [pos_A1;pos_A2(2:end,:);pos_A3(2:end,:);pos_A4(2:end,:);pos_A5(2:end,:);pos_A6(2:end,:)];
%T_letter
%linear planning
pos_T0 = linear_planning([250 -200 100],[350 -200 100],1);
pos_T1 = linear_planning([350 -200 100],[350 -150 100],1);
pos_T2 = linear_planning([350 -150 100],[350 -175 100],1);
pos_T3 = linear_planning([350 -175 100],[250 -175 100],1);
%time adjustment
pos_T0(:,1) = pos_T0(:,1)+11;
pos_T1(:,1) = pos_T1(:,1)+12;
pos_T2(:,1) = pos_T2(:,1)+13;
pos_T3(:,1) = pos_T3(:,1)+14;
%pos component merge
pos_T = [pos_T0;pos_T1(2:end,:);pos_T2(2:end,:);pos_T3(2:end,:)];
%D_letter
%planning
pos_D0 = linear_planning([250 -175 100],[350 -150 100],1);
pos_D1 = circular_planning([300 -150 100],50,[0 180],1);
pos_D2 = linear_planning([250 -150 100],[350 -150 100],1);
%time adjustment
pos_D0(:,1) = pos_D0(:,1)+15;
pos_D1(:,1) = pos_D1(:,1)+16;
pos_D2(:,1) = pos_D2(:,1)+17;
%pos component merge
pos_D = [pos_D0;pos_D1(2:end,:);pos_D2(2:end,:)];
%MERGE
pos = [pos_H;pos_A(2:end,:);pos_T(2:end,:);pos_D(2:end,:)];
%inverse kinematic
theta = inverse_kinematic(pos);
%theta indexing
theta1 = [theta(:,1) theta(:,2)*pi/180];
theta2 = [theta(:,1) theta(:,3)*pi/180];
theta3 = [theta(:,1) theta(:,4)*pi/180];