function [score] = divingScore(diveNumber, degreeDive)

order = sort(diveNumber);

order(1) = [];

order(end) = [];

score = sum(order) .* degreeDive;