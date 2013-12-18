function[bouncy] = bouncyHouse(yard)

% mask the yard for both g and everything that isn't g
mask=yard=='g';
mask2=yard~='g';

yard(mask)=1;
yard(mask2) =0;
yard=double(yard);

% find out both the width and height of the yard and put it into a vector
[width height] = size(yard)

% run through the yard and replace the values from the min value above,
% next to, and to the left of each value.
for i = 1:width
    for c = 1:height
        if i>1 & c>1 & yard(i,c)>0
            small=min(yard(i-1,c), yard(i, c-1));
            small=min(small, yard(i-1, c-1));
            yard(i,c)=yard(i,c)+small;
        end
    end
end

% find the largest row in the yard
layout = max(yard);
% then find the largest value from the row
layout = max(layout);

% Depending on the size, determine which bouncy house would fit. And if
% none, then :'( you don't get one!
if layout == 4
    bouncy = 'Small';
elseif layout == 5    
    bouncy = 'Medium';
elseif layout >= 6
    bouncy = 'Large';
else
    bouncy = 'Sorry. There''s not enough room for a bouncy house.';
end
