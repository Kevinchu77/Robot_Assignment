%planning
pos_D0 = linear_planning([250 -175 100],[350 -150 100],10);
pos_D1 = circular_planning([300 -150 100],50,[0 180],10);
pos_D2 = linear_planning([250 -150 100],[350 -150 100],10);
%time adjustment
pos_D1(:,1) = pos_D1(:,1)+10;
pos_D2(:,1) = pos_D2(:,1)+20;
%pos component merge
pos = [pos_D0;pos_D1(2:end,:);pos_D2(2:end,:)];
%inverse kinematic
theta = inverse_kinematic(pos);
%theta indexing
theta1 = [theta(:,1) theta(:,2)*pi/180];
theta2 = [theta(:,1) theta(:,3)*pi/180];
theta3 = [theta(:,1) theta(:,4)*pi/180];