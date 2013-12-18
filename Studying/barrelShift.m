function output = barrelShift(array,num)
    [r c] = size(array);
    lin = array(:);
    len = length(lin)
    smallShift = mod(num, len);
    part1 = array(len-smallShift+1:len);
    part2 = array(1:len-smallShift);
    rearranged = [part1 part2];
    output = reshape(rearranged, r, c);
end