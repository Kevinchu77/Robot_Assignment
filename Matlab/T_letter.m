%linear planning
pos_T0 = linear_planning([250 -200 100],[350 -200 100],10);
pos_T1 = linear_planning([350 -200 100],[350 -150 100],10);
pos_T2 = linear_planning([350 -150 100],[350 -175 100],10);
pos_T3 = linear_planning([350 -175 100],[250 -175 100],10);
%time adjustment
pos_T1(:,1) = pos_T1(:,1)+10;
pos_T2(:,1) = pos_T2(:,1)+20;
pos_T3(:,1) = pos_T3(:,1)+30;
%pos component merge
pos = [pos_T0;pos_T1(2:end,:);pos_T2(2:end,:);pos_T3(2:end,:)];
%inverse kinematic
theta = inverse_kinematic(pos);
%theta indexing
theta1 = [theta(:,1) theta(:,2)*pi/180];
theta2 = [theta(:,1) theta(:,3)*pi/180];
theta3 = [theta(:,1) theta(:,4)*pi/180];