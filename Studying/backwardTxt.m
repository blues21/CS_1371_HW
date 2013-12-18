function backwardTxt(name)
fh=fopen(name);
line=fgetl(fh); %get first line
nameout=sprintf('reverse_%s', name); %new file name
fhout=fopen(nameout, 'w'); %open new file for writing
while ischar(line) %while there are still lines to go through
    curline=[];
    while~isempty(line)
        [word line]=strtok(line);
        curline=[word ' ' curline]; %reverses the line's words
    end
    line=fgetl(fh); %get next line
    if ischar(line)
        fprintf(fhout, '%s\n', curline)
    else %if the previous line was the last line, no \n
        fprintf(fhout, curline)
    end
end
fclose(fh)
fclose(fhout)
end