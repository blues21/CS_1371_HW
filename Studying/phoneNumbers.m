function out = phoneNumbers(filein)
nums=csvread(filein);
count=1; %initializer
for x=1:3:length(nums) %each phone number is broken into 3 parts, so go by 3's
    str=sprintf('(%d)%d-%d', nums(x), nums(x+1), nums(x+2));
    out{count, 1}= str
    count=count+1; %this is going to count where we are in the output cell, since x jumps by 3's
end
end
