function[output] = nameGen(input)

first = input{1};
last = input{2};
num = input{3};

for x = 1:length(first)
    
    fname = first(x);
    fname = lower(char(fname));
    letter = fname(1);
    
    lname = last(x);
    lname = lower(char(lname));
    
    number = num2str(num(x));
    
    username = [letter lname number];
    
    output{x} = username;
end


end