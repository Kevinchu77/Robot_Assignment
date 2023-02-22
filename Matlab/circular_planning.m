function pos = circular_planning(center,radius,angle,duration)
    t = 0:0.01:duration;
    phi = linspace(angle(1),angle(2),length(t));
    x = 0;
    y = 0;
    z = 0;
    for i=1:length(phi)
        x(i) = center(1) + radius*cosd(phi(i));
        y(i) = center(2) + radius*sind(phi(i));
        z(i) = center(3);
    end
    pos = [t' x' y' z'];
end

