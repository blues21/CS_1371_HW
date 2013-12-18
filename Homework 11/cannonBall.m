function [xx yy zz] = cannonBall(r)
    th = linspace(0,2.*pi);
    u = r.*cos(th);
    v = r.*sin(th);
    [uu tth] = meshgrid(u, th);
    [vv tth] = meshgrid(v, th);
    rr = uu;
    xx = rr.*cos(tth);
    zz = vv;
    yy = rr.*sin(tth);
  