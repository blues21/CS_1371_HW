function output = interweave(vec1,vec2)

l1 = length(vec1);
l2 = length(vec2);
length = 2*max(l1,l2);

output = zeros(length)
output(1:2:end) = l1;
ouput(2:2:end) = l2;

end
