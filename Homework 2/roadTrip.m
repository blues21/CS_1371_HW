function [cost] = roadTrip(carDistance, gasGallons, totalMiles, gasPrice)

% Total cost is determined by dividing the total distance by
% distance traveled on one tank multiplyed by tank size and price per
% gallon
cost = (totalMiles./carDistance).*gasGallons.*gasPrice;

% In order to round we must multiply by 100, round, and then divide.
cost = cost .* 100;
cost = ceil(cost);
cost = cost ./ 100;