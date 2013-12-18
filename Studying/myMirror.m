function myMirror(fOld, fNew, direc, vec)
org = imread(fOld)

switch direc
    case 'Up'
        new = org(end:-1:1,:,:);
        output = [new;org];
    case 'Down'
        new = org(end:-1:1,:,:);
        output = [org;new];
    case 'Left'
        new = org(:,end:-1:1,:);
        output = [new org]
    case 'Right'
        new = org(:,end:-1:1,:)
        output = [org new]
end

[r c] = size(output)
frame = 15
r = r+2*frame;
c = c+2*frame;

output1 = ones(r,c);
output1 = cat(3, output1, output1, output1);
output1(1:frame,1:frame,1) = vec(1);
output1(end-frame:end-frame,end,1) = vec(1);
output1(1:frame,1:frame,2) = vec(2);
output1(end-frame:end-frame,end,2) = vec(2);
output1(1:frame,1:frame,3) = vec(3);
output1(end-frame:end-frame,end,3) = vec(3);
output1(frame+1:end-frame-1,frame+1:end-frame-1) = output;



imwrite(output1, fNew, 'jpg')


end