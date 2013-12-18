function [mixed] = interweave(vec1, vec2)

% First we determine the maximum length for each vector
vecLength1 = length(vec1);
vecLength2 = length(vec2);

% Then we line up the two vectors and take the longer of the two
lengthVec = [vecLength1 vecLength2];
maxLength = max(lengthVec);

% By multiplying the longer of the two by 2, we will be able to find how
% long our final vector will be.
% 
% Here we also begin our filling of zeros
mixed = zeros(1, maxLength .* 2);

% Now we begin the "weaving" by adding the odd numbers from vec1 and the
% evens from vec2 until they run out. (zeros are left to fill the gaps)
mixed(1:2:(vecLength1 .* 2)) = vec1;
mixed(2:2:(vecLength2 .* 2)) = vec2;