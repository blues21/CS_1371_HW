%  Size of Tank
tankSize = 5.12;
%  Distance we can travel in one tank
distanceOneTank = 155.36;
%  Total distance of trip
totalDistance = 350;
%  Price Per Gallon
pricePerGallon = 3.84;


%  Total cost is determined by dividing the total distance by
%  distance traveled on one tank multiplyed by tank size and price per
%  gallon
cost = (totalDistance/distanceOneTank)*tankSize*pricePerGallon;