function pirateShip()
clf
RR=100;
% Generate the points for the ship. You might choose to use one of the test
% cases from makeShip().
u3 = linspace(0,-10);
v3 = linspace(-10,0);
u4 = [-10, -10, 0];
v4 = [0, 40, 40];
ang3=pi;

% Use the makeShip() function
[xx1 yy1 zz1]=makeShip(u3, v3, ang3, 'y');
[xx2 yy2 zz2]=makeShip(u4, v4, ang3, 'y');
xx1 = xx1+RR;
xx2 = xx2+RR;

% Make the mast
[xx3 yy3 zz3] = CylindArrs(30, 2, 'x');
[xx3 yy3 zz3] = rotateAxis(xx3, yy3, zz3, 3*pi/2,'y');
xx3 = xx3+RR;
yy3 = yy3+20;
zz3 = zz3+20;

% Make the sails
u1 = linspace(0,-3);
v1 = linspace(-10,0);
u2 = linspace(-3,0);
v2 = linspace(0,10);
ang1 = pi;
[xx4 yy4 zz4]=makeShip(u1, v1, ang1, 'y');
[xx5 yy5 zz5]=makeShip(u2, v2, ang1, 'y');

[xx4 yy4 zz4] = rotateAxis(xx4, yy4, zz4, 3*pi/2,'z');
[xx5 yy5 zz5] = rotateAxis(xx5, yy5, zz5, 3*pi/2,'z');

[xx4 yy4 zz4] = rotateAxis(xx4, yy4, zz4, -3*pi/2,'x');
[xx5 yy5 zz5] = rotateAxis(xx5, yy5, zz5, -3*pi/2,'x'); 
xx4 = xx4+RR;
xx5 = xx5+RR;
yy4 = yy4+20;
yy5 = yy5+20;
zz4 = zz4+15;
zz5 = zz5+15;

% Make a cannon
[xx6 yy6 zz6] = CylindArrs(5, 1, 'x');
[xx6 yy6 zz6] = rotateAxis(xx6, yy6, zz6, 5*pi/3,'y');
xx6 = xx6-12;
xx6 = xx6+RR;
yy6 = yy6+10;
zz6 = zz6+4;

% Make a cannonball
[xx7 yy7 zz7] = cannonBall(1);
xx7 = xx7-11.3;
xx7 = xx7+RR;
yy7 = yy7+10;
zz7 = zz7+3;

% Create Island
R = 5;
r = 20;
phi = linspace(0, 2.*pi);
u = R + r .* cos(phi);
v = r .* sin(phi);

th = linspace(0, 2.*pi);
[uu tth] = meshgrid(u, th);
vv = meshgrid(v, th);
rr = vv;
xx = uu;
zz = rr .* cos(tth);
yy = rr .* sin(tth);



% Use a loop and surface plots to make the animation.
ang = pi/50;
totalAngle = 0;

% Use  a condition to control the number of frames your animation has
while totalAngle < pi
    
    surf(xx1,yy1,zz1);
    
    % Turn hold on
     hold on
     title('Fire at the Giant Egg!')
     surf(xx, yy, zz);
    % Plot the ship and cannonball.
      
     surf(xx2,yy2,zz2);
     surf(xx3,yy3,zz3);
     surf(xx4,yy4,zz4);
     surf(xx5,yy5,zz5);
     surf(xx6,yy6,zz6);
     surf(xx7,yy7,zz7);
      
     shading interp
     colormap bone
     whitebg('blue')
    % Adjust the axes so the cannonball and ship are in full view the entire
    % time. Also turn the axes off.  **NOTE** This may need to be adjusted
    % depending on how large your objects are or how far they extend.
    axis([-150, 150, -150, 150, -5, 150]);
    axis off;
    
    % Maybe change the view using the view() function.  **NOTE** This may
    % need to be changed to view your animation.  If you don't understand,
    % type "help view" (without the quotes) for more information.
    view(-157,20);
    
    % Move the ship (and cannon) together in a circle. Perhaps use your
    % rotateAxis function.
    [xx1 yy1 zz1] = rotateAxis(xx1, yy1, zz1, ang, 'z');
    [xx2 yy2 zz2] = rotateAxis(xx2, yy2, zz2, ang, 'z');
    [xx3 yy3 zz3] = rotateAxis(xx3, yy3, zz3, ang, 'z');
    [xx4 yy4 zz4] = rotateAxis(xx4, yy4, zz4, ang, 'z');
    [xx5 yy5 zz5] = rotateAxis(xx5, yy5, zz5, ang, 'z');
    [xx6 yy6 zz6] = rotateAxis(xx6, yy6, zz6, ang, 'z');
    

    % Move the cannonball in a trajectory path.
    [xx7 yy7 zz7] = rotateAxis(xx7, yy7, zz7, ang, 'y');
    
    % Approach while loop terminating condition
    totalAngle = totalAngle + ang;
    
    % Maybe turn the grid off.
    grid off
    
    % Pause to see movement
    pause(.001)
    
    % Turn off hold
    hold off
    
end
title('Whew! Missed us by THAT MUCH!')

% If you do not fill this section out with DETAILED EXPLANATIONS of what
% your creative changes are, you will not receive any extra credit.


% Creative changes I made to the assignment include: 

% Adding conversation between the men on the boat.
% Adding a giant egg for them to fire at, and miss.
% A very artic style colormap.

end