function [house] = sortingHat(name, vector)

letterG = [strfind(name, upper('g')), strfind(name, lower('g'))];
multiplyG = length(letterG);

if(multiplyG > 0)
    newVector1 = vector(1) .* multiplyG;
else
    newVector1 = vector(1);
end

letterH = [strfind(name, upper('h')), strfind(name, lower('h'))];
multiplyH = length(letterH);

if(multiplyH > 0)
    newVector2 = vector(2) .* multiplyH;
else
    newVector2 = vector(2);
end

letterR = [strfind(name, upper('r')), strfind(name, lower('r'))];
multiplyR = length(letterR);

if(multiplyR > 0)
    newVector3 = vector(3) .* multiplyR;
else
    newVector3 = vector(3);
end

letterS = [strfind(name, upper('s')), strfind(name, lower('s'))];
multiplyS = length(letterS);

if(multiplyS > 0)
    newVector4 = vector(4) .* multiplyS;
else
    newVector4 = vector(4);
end

newVector = [newVector1(1) newVector2(1) newVector3(1) newVector4(1)];

[C I] = max(newVector);

if(I == 1)
   house = 'Gryffindor';
elseif(I == 2)
   house = 'Hufflepuff';
elseif(I == 3)
   house = 'Ravenclaw';
elseif(I == 4)
   house = 'Slytherin';
end