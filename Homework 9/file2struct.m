function strArr = file2struct(file)

fh = fopen(file);
line = fgetl(fh);
line = fgetl(fh);
while ischar(line)
   
    [field rest] = strtok(line,':');  
    field = field(2:end-1);
    rest = rest(3:end);
    
    % if the insertion is a string
    if strfind(rest(1), '"');
        rest = rest(2:end-1);
        
    % if it's an array
    elseif strfind(rest(1), '[')
        
        % array of strings
        if strfind(rest(2), '"')
            rest = strrep(rest, '"','');
            rest = strrep(rest, ' ','');
            left = rest(2:end-1);
            rest = [];
           while true
               [a left] = strtok(left, ',');
               rest{end+1} = a;
               if isempty(left), break; end
               
               
           end
        % array of numbers
        else
            left = rest(2:end-1);
            rest = [];
            while true
               [a left] = strtok(left, ', ');
               a = str2num(a);
               rest(end+1) = [a];
               if isempty(left), break; end
               
           end
            
        end
    % if it's a number    
    else
       rest = str2num(rest);
    end
    
    strArr.(field) = rest;
    
    line = fgetl(fh);
    if strfind(line, '}')
        break;
    end
    
    
end
status = fclose(fh);