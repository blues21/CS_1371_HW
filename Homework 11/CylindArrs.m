function [xx,yy,zz] = CylindArrs(len,radius,axis)

    th=linspace(0,2.*pi);
    if strcmp(axis, 'x')
        x = [0 0 len len 0];
        z = [0 radius radius 0 0];
        [rr tth] = meshgrid(z, th);
        [xx tth] = meshgrid(x, th);
        yy = rr.*cos(tth);
        zz = rr.*sin(tth);
        
    elseif strcmp(axis, 'y')
        x = [0 0 len len 0];
        y = [0 radius radius 0 0];
        [rr tth] = meshgrid(x, th);
        [yy tth] = meshgrid(y, th);
        xx = rr.*cos(tth);
        zz = rr.*sin(tth);
        
    elseif strcmp(axis, 'z')
        z = [0 0 len len 0];
        y = [0 radius radius 0 0];
        [rr tth] = meshgrid(y, th);
        [zz tth] = meshgrid(z, th);
        xx = rr.*cos(tth);
        yy = rr.*sin(tth);
    
    end
    