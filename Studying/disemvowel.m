function output = disemvowel(str, vowel)
upper = char(double(vowel)-32);
found = [strfind(str, vowel) strfind(str, upper)]
str(found) = [];
output = str;
end