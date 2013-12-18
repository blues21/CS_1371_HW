function [myDiff] = myDiff(vec)

myDiff = vec(2:end) - vec(1:end-1);
