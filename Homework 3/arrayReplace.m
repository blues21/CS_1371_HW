function [finalArray] = arrayReplace(array1, array2, number)

mask = array1 == number;

array1(mask) = array2(mask);

finalArray = array1;