function [output] = interweave(stringM, stringN)

stringN = stringN(end:-1:1);


vecLength1 = length(stringM);
vecLength2 = length(stringN);


lengthVec = [vecLength1 vecLength2];
maxLength = max(lengthVec);


output = zeros(1, maxLength .* 2);


output(1:2:(vecLength1 .* 2)) = stringM;
output(2:2:(vecLength2 .* 2)) = stringN;


spaces = [strfind(output, 0)];


output(spaces) = ['-'];


output = char(output);
