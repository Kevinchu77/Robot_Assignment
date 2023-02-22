function [theta_1, theta_2, theta_3, fail] = Inverse(x, y, z,theta_1_tmp, theta_2_tmp, theta_3_tmp)
d1 = 131;
a1 = 88;
a2 = 400;
a3 = 68;
fail = 0;
c3 = ((d1-z)^2+(sqrt(x^2+y^2)-a1)^2-a2^2-a3^2)/(2*a3*a2);
s3 = sqrt(1-c3^2);
k1 = a3*c3+a2;
k2 = a3*s3;
theta_1  = atan2(y,x);
if (theta_1<-170/180*pi)||(theta_1>170/180*pi)
    fail=1;
else
theta_2 = atan2((d1-z),(x*cos(theta_1)+y*sin(theta_1)-a1))-atan2(k2,k1);
if (theta_2<-150/180*pi)||(theta_2>65/180*pi)
    fail=1
else
theta_3=atan2(s3,c3);
if (theta_1<-70/180*pi)||(theta_1>190/180*pi)
       fail=1;
end
end
end
if(fail==1)
    theta_1=theta_1_tmp;
    theta_2=theta_2_tmp;
    theta_3=theta_3_tmp;
end
end

