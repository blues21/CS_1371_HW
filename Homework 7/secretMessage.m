function[] = secretMessage(file)

% the basics of opening and going through the line
fh1 = fopen(file, 'r')
line = fgets(fh1)
x = 1;
% working with the title
[z q] = strtok(file, '.')
new_name = [z '_decoded.txt']
fh2 = fopen(new_name, 'w')

% running the whie loop for each line
while line ~= -1
 
    % if the remainder is equal to 1 then print out the odd ones
    if mod(x, 2) == 1
        
        fprintf(fh2, line)
        
    end
   
    x = x + 1;
    
    line = fgets(fh1)
    
end

status = fclose(fh1);
status2 = fclose(fh2);
