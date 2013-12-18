function [time] = theRatio(chart)

row2 = chart(2, 1:end);

row3 = chart(3, 1:end);

ratio = myDiff(row3) ./ myDiff(row2);

[~, maxPos] = max(ratio);

time = [chart(1, maxPos) chart(1, maxPos+1)];

