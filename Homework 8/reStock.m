function [output] = reStock(file, cellArray)
output = '';
b = 1;
carr = cellArray
[row col] = size(cellArray)

[num text raw] = xlsread(file)

    for v = 1:col
        
        for c = 2:row
            
            aisle = cellArray{c,v};
            %   Needs to be aisle plus 1
            reload = text((aisle+1),v);
            
            
            if strcmp(reload, '') == 1
                output{b} = text{1,v};
                b = b+1;
                
                
            end
            
            
        end
    end
    [junk out] = unique(output); 
    output = output(sort(out));
end