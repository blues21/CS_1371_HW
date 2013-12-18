function [tipBefore tipAfter difference] = compareTips(subtotal, salesTax, tipPercent)

%the subtotal is multiplyed by the tip percentage
tipBefore = subtotal .* tipPercent./100;

%tax is added on to the total to create a new subtotal
subTotalWithTax = subtotal + (subtotal .* salesTax./100);

%the new subtotal is multiplyed by the tip percentage
tipAfter = subTotalWithTax * tipPercent./100;

% The multiplication, then rounding, then division allows for rounding of a
% small decimal number
tipBefore = ceil(tipBefore .* 100);
tipAfter = ceil(tipAfter .* 100);
tipBefore = tipBefore ./ 100;
tipAfter = tipAfter ./ 100;

%tipBefore and after are subtracted in order to find the difference
difference = abs(tipBefore - tipAfter);