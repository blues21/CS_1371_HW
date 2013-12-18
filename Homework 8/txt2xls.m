function[] = txt2xls(file)

crr = {};
fh = fopen(file, 'r')
line = fgetl(fh)

[fName, txt] = strtok(file, '.')
newFile = [fName '.xls']
count = 1;

while ischar(line)
   
    
    
    spaces = strfind(line, ' ')
    line(spaces) = []
    
    commas = strfind(line, ',')
    sum = length(commas)
    i = sum + 1;
    for c = 1:i
        [first rest] = strtok(line, ',')
        [header item] = strtok(first, ':')
        
        % removes the comma from the header
        com = strfind(header, ',')
        header(com) = []
        
        % removes the colon from the items
        com = strfind(item, ':')
        item(com) = []
        
        if count == 1
            carr{count, c} = header;
        end
            carr{count + 1, c} = item;
            line = rest
    end
    
    line = fgetl(fh);
    count = count + 1;
    
    
end

xlswrite(newFile, carr)
fclose(fh);