function theta = inverse_kinematic(pos)
    %DH parameters
    a1 = 88;
    a2 = 310;
    a3 = 150;
    d1 = 126.5;
    theta1 = 0;
    theta2 = 0;
    theta3 = 0;
    syms 
    for i=1:size(pos,1)
        X = pos(i,2);
        Y = pos(i,3);
        Z = pos(i,4);
        %theta1 solving
        t1 = atan2(Y,X);
        %theta3 solving
        c3 = ((d1-Z)^2+(sqrt(X^2+Y^2)-a1)^2-a2^2-a3^2)/(2*a3*a2);
        s3 = sqrt(1-c3^2);
        t3 = atan2(s3,c3);
        %theta2 solving
        k1 = a3*cos(t3)+a2;
        k2 = a3*sin(t3);
        t2 = atan2(d1-Z,X*cos(t1)+Y*sin(t1)-a1)-atan2(k2,k1);
        theta1(i)=t1*180/pi;
        theta2(i)=t2*180/pi;
        theta3(i)=t3*180/pi;
    end
    theta = [pos(:,1) theta1' theta2' theta3'];
end

