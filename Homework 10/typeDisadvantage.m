function output = typeDisadvantage(strArr, input)

type = {strArr.Type};
weakness = {strArr.Weakness};

if any(strcmp(weakness(strcmp(input, type)), ''))
    output = {};
else
    var = weakness(strcmp(input, type));
    output = [var typeDisadvantage(strArr, var)];
    
end