function [original newString] = stringKnot(array)

% take the outer ring and convert it into vector form
% convert this vector into numbers using the ascii function
topRight = flipdim(array, 2);
topHalf = [array topRight];
bottomRight = flipdim(topRight, 1);
bottomLeft = flipdim(bottomRight, 2);
bottomHalf = [bottomLeft bottomRight];
original = [topHalf ; bottomHalf];

topRow = original(1, 1:end-1);
bottomRow = original(end, end-1:-1:2);
firstColumn = original(1:end, 1);
firstColumn = firstColumn';
lastColumn = original(end:-1:2, end);
lastColumn = lastColumn';

outerRing = [topRow firstColumn bottomRow lastColumn];

newString = char(outerRing);
