

% Write a function that takes in a cell containing numbers either as
% strings or as doubles. If the element is a double, change it to a 
% vector of the negative of the element then the original. 
% 
% (For example, if in{1}= [8], out{1}=[-8 8] ) If the element is a string,
% simply convert to double. Refer to test cases. 


function out=numberCell(cA)

for x=1:length(cA)
    
    if strcmp(class(cA{x}), 'char')
        
        out{x}=str2num(cA{x});
        
    elseif strcmp(class(cA{x}), 'double')
        
        out{x}=[(-1).*cA{x} cA{x}]
        
    end
end