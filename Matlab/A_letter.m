%linear planning
pos_A1 = linear_planning([250 -250 100],[350 -225 100],5);
pos_A2 = linear_planning([350 -225 100],[250 -200 100],5);
pos_A3 = linear_planning([250 -200 100],[280 -207.5 100],5);
pos_A4 = linear_planning([280 -207.5 100],[280 -242.5 100],5);
pos_A5 = linear_planning([280 -242.5 100],[280 -207.5 100],5);
pos_A6 = linear_planning([280 -207.5 100],[250 -200 100],5);
%time adjustmentf
pos_A2(:,1) = pos_A2(:,1)+5;
pos_A3(:,1) = pos_A3(:,1)+10;
pos_A4(:,1) = pos_A4(:,1)+15;
pos_A5(:,1) = pos_A5(:,1)+20;
pos_A6(:,1) = pos_A5(:,1)+25;
%pos component merge
pos = [pos_A1;pos_A2(2:end,:);pos_A3(2:end,:);pos_A4(2:end,:);pos_A5(2:end,:);pos_A6(2:end,:)];
%inverse kinematic
theta = inverse_kinematic(pos);
%theta indexing
theta1 = [theta(:,1) theta(:,2)*pi/180];
theta2 = [theta(:,1) theta(:,3)*pi/180];
theta3 = [theta(:,1) theta(:,4)*pi/180];