function output = steganos(file)


image = imread(file);
[r c z] = size(image);
strin = '';
biNum = '';
output = '';
next = '';

for i = 1:r
    for j = 1:c
       for k = 1:z
           var = image(i,j,k);
           biNum = mod(var,2);
           biNum = num2str(biNum);
           strin = [strin biNum];
           if length(strin) == 8;
               
               if strcmp(strin, '00000000');
                   return
               else
                   newNum = bin2dec(strin);
                   next = char(newNum);
                   output = [output next];
                   strin = '';
                   output = output;
               end
           end
       end
    end
end

