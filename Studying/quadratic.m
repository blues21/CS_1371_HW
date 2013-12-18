function [tipBefore tipAfter diff] = compareTips(subtotal, salesTax, percent)

tipBefore = ceil(subtotal*(salesTax/100));

newSub = subtotal + subtotal*percent;

tipAfter = ceil(newSub*(salesTax/100));

diff = tipAfter - tipBefore;
end