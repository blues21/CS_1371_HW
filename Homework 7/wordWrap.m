function[] = wordWrap(input, output, wordCount)

%    the usual opening and running of the coded
fh1 = fopen(input, 'r');
line1 = fgets(fh1);

fh3 = fopen(output, 'w');

%   the number of words in the whole thing
num = 0;
while (~isempty(strtok(line1)))
    [old line1] = strtok(line1, ' ');
    num = num + 1;
end
%    this number is divided in order to find the number of times for the
%    while loop to run.
rows = num ./ wordCount
count = 0;

% close and re run the file handle so that the str tok can be re run.
fclose(fh1);
fh1 = fopen(input, 'r');
line1 = fgets(fh1)

%run the while loop of row number
while count < rows
    
    oldLine = '';
    i = 1;
    %   get to the wordcount number (ex. 8) of words
    while i <= wordCount
        [old line1] = strtok(line1, ' ')
        oldLine = [oldLine ' ' old]
        i = i + 1;
    end

    oldLine(1) = [''];
    %   print and then break to new line
    fprintf(fh3, '%s\n', oldLine);
    count = count + 1;
end

fclose(fh1);
fclose(fh3);