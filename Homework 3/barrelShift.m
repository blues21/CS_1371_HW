function [final] = barrelShift(arr, num)

vertArr = arr(:);

smallShift = mod(num, length(vertArr));

rearranged = [arr(length(vertArr)-smallShift + 1 : length(vertArr)), arr(1:length(vertArr)-smallShift)];

[rows, cols] = size(arr);

final = reshape(rearranged, rows, cols);