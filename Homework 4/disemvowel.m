function [output] = disemvowel(string, vowel)

% Finds the location of the vowel to remove, both lower and uppercase, then
% concats them together into one variable.
location = [strfind(string, lower(vowel)) strfind(string, upper(vowel))]

% Then where the location of the vowel is becomes blank, this removes the
% letter used in the function
string(location) = []
% The final output is then equal to the string that was inputed, minus the
% vowels.
output = string;