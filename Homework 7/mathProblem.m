function [final] = mathProblem(f1, num)

% open the file and prepare to go through the lines
fh = fopen(f1, 'r');
line = fgets(fh);

% run this while loop for each of the 
while line ~= -1
    
    % if the line is equal to zero. close it.
    if line == '0';
        status = fclose(fh);
    else
        % otherwise use the strtok to seperate the operations 
        [a b] = strtok(line, ' ');
        b = str2num(b);
        % a simple switch statment to perform the operations
        switch a
            case 'Add'
               num = num + b;
            case 'Subtract'
               num = num - b;
            case 'Divide'
               num = num ./ b;
            case 'Multiply'
               num = num .* b;
        end

    end
    line = fgets(fh);
end

status = fclose(fh);
final = num;
