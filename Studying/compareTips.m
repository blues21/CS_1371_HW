function [tipBefore tipAfter diff] = compareTips(subtotal, salesTax, percent )
tipBefore = ceil(subtotal*(percent))/100;
newSub = subtotal + subtotal*(salesTax/100);
tipAfter = ceil(newSub*(percent))/100;
diff = tipAfter - tipBefore;
end