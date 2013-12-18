function[] = Shakespeare(file, list)

fh1 = fopen(file, 'r');
%   new name for the outputted file
new_name = [fgetl(fh1) '.txt'];
%   opening the new one or creating it if it doeesn't already exist
fh3 = fopen(new_name, 'w');

%   go through the lines
line1 = fgetl(fh1);


fprintf(fh3, '%s', new_name(1:end-4));
fprintf(fh3, '\n');


while ischar(line1)
    
    fh2 = fopen(list, 'r');
    line2 = fgetl(fh2);
    
        while ischar(line2)
            [old new] = strtok(line2, ',');
            % when there is something to be swapped, run this loop
            if ~isempty(strfind(line2, old));
                new = new(3:end);
                % string replace
                line1 = strrep(line1, old, new);
            end
                %move to the next line
                line2 = fgetl(fh2);
        end
    % change the name so the variables don't get confusing
    modern = line1;
    line1 = fgetl(fh1);
    if ischar(line1)
        % print it with a line break at the end
        fprintf(fh3, '%s\n', modern);
    else
        % for the last one don't
        fprintf(fh3, modern);
    end
end

fclose(fh1);
fclose(fh3);