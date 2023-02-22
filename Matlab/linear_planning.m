function pos = linear_planning(pA,pB,duration)
    t = 0:0.01:duration;
    x = linspace(pA(1),pB(1),length(t));
    y = linspace(pA(2),pB(2),length(t));
    z = linspace(pA(3),pB(3),length(t));
    pos = [t' x' y' z'];
end
