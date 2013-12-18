function [xx,yy,zz] = makeShip(u, v, ang, axis)

th=linspace(0,ang,300);
if strcmp(axis, 'x')
    x = u;
    z = v;
    [rr tth] = meshgrid(x, th);
    [xx tth] = meshgrid(z, th);
    yy = rr.*cos(tth);
    zz = rr.*sin(tth);
    
elseif strcmp(axis, 'y') % Works for Y, check others later
    x = u;
    y = v;
    [rr tth] = meshgrid(x, th);
    [yy tth] = meshgrid(y, th);
    xx = rr.*cos(tth);
    zz = rr.*sin(tth);
    
elseif strcmp(axis, 'z')
    x = u;
    z = v;
    [rr tth] = meshgrid(x, th);
    [zz tth] = meshgrid(z, th);
    xx = rr.*cos(tth);
    yy = rr.*sin(tth);
    
end