%linear planning
pos_H1 = linear_planning([250 -300 100],[350 -300 100],10);
pos_H2 = linear_planning([350 -300 100],[300 -300 100],10);
pos_H3 = linear_planning([300 -300 100],[300 -250 100],10);
pos_H4 = linear_planning([300 -250 100],[350 -250 100],10);
pos_H5 = linear_planning([350 -250 100],[250 -250 100],10);
%time adjustment
pos_H2(:,1) = pos_H2(:,1)+10;
pos_H3(:,1) = pos_H3(:,1)+20;
pos_H4(:,1) = pos_H4(:,1)+30;
pos_H5(:,1) = pos_H5(:,1)+40;
%pos component merge
pos = [pos_H1;pos_H2(2:end,:);pos_H3(2:end,:);pos_H4(2:end,:);pos_H5(2:end,:)];
%inverse kinematic
theta = inverse_kinematic(pos);
%theta indexing
theta1 = [theta(:,1) theta(:,2)*pi/180];
theta2 = [theta(:,1) theta(:,3)*pi/180];
theta3 = [theta(:,1) theta(:,4)*pi/180];