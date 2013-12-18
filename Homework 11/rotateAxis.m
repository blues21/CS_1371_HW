function [xx,yy,zz] = rotateAxis(x,y,z,ang,axis)
[r c] = size(x);
t=r*c;
x = reshape(x,1,t);
y = reshape(y,1,t);
z = reshape(z,1,t);
    switch axis
        case 'x'
        R = [1 0 0; 0 cos(ang) sin(ang); 0 -sin(ang) cos(ang)]*[x;y;z];
        xx=R(1,:);
        yy=R(2,:);
        zz=R(3,:);
        case 'y'
        R = [cos(ang) 0 -sin(ang); 0 1 0; sin(ang) 0 cos(ang)]*[x;y;z];
        xx=R(1,:);
        yy=R(2,:);
        zz=R(3,:);
        case 'z'
        R = [cos(ang) sin(ang) 0; -sin(ang) cos(ang) 0; 0 0 1]*[x;y;z];
        xx=R(1,:);
        yy=R(2,:);
        zz=R(3,:);
    end
xx = reshape(xx,r,c);
yy = reshape(yy,r,c);
zz = reshape(zz,r,c);