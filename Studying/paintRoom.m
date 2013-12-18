function [bigCans smallCans] = paintRoom(l,w,h,window,coats)
wall1 = 2*w*h;
wall2 = 2*l*h;
ceiling = l*w;
area = wall1 + wall2 + ceiling - window;
area = area*coats;
bigCan = 5*350;
bigCans = (area/bigCan)
smallCans = ceil(mod(area,5));
bigCans = floor(bigCans);
end