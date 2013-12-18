subTotal = 101.68;
salesTax = 9.75;
tipPercent = 20;

tipBefore = subTotal * tipPercent/100;

subTotalWithTax = subTotal + (subTotal * salesTax/100);

tipAfter = subTotalWithTax * tipPercent/100;

difference = abs(tipBefore - tipAfter);