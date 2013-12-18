function [bool bal] = matchParens(string)
bool = true;
bal = 0;

len = length(string);

for i = 1:len
    if string(i) == '('
        bal = bal + 1;
    elseif string(i) == ')'
        bal = bal - 1;
    end
    
end

if bal ~= 0
    bool = false; 
end