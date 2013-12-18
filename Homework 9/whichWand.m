function output = whichWand(str, field)

list = fieldnames(str);
output = str;
cmp = strcmp(list, field);

    if any(cmp)
        
        if isnumeric(output(1).(field))
            
            [arr order] = sort([output.(field)]);
            
        else
            
            row = {output.(field)};

            [arr order] = sort(row);
        end
        
        l = length(arr);
            
        for i = 1:l
            output(i).(field) = arr(i); 
        end

        list2 = list(~cmp);

        for x = 1:length(list2)

            field = list2{x};
            cArr2 = {output.(field)};
            cArr2 = cArr2(order);


            for i = 1:length(cArr2)
                
                output(i).(field) = cArr2{i}; 
            
            end


        end
        
       
    else 
   
        output = 'Invalid Field Name';
    
    end

    
end