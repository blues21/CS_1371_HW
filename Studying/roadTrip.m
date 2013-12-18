function output = roadTrip(miles, gallons, length, gasPrice)
numStops = length/miles;
totalGallons = numStops*gallons;
output = totalGallons*gasPrice;
output = ceil(output*100)/100;
end