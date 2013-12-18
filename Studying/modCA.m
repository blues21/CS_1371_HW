function output = modCA(input)


% Function Description:
% Given a cell array, delete the first and last cells. Then add 1 to
% anything that is of type double in the cell.
output = input(2:end-1);
for i = 1:length(output)
    
    if isnumeric(output{i})
        
        output{i} = output{i} + 1;
        
    end
   
end