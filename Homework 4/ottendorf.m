function [decoded] = ottendorf(passage, x, y)

[X Y] = size(passage);
ind = x + X;
ind = x + X .* (y - 1);
decoded = passage(ind);
decoded = lower(decoded);