M = round(a);
N = floor(a);
O = ceil(a);
P = abs(b);
Q = cos(b);
R = mod(b,c);

%Compare Tips:

sub = 101.68;
tax = 9.75;
tip = 20; 
tip = tip / 100;
tax = tax / 100;
tipBefore = tip * sub;
tipAfter = (tax * sub + sub) * tip;
tipBefore = tipBefore * 100 / 100;
tipAfter = tipAfter * 100 / 100;
difference = abs(tipBefore - tipAfter);
difference = difference * 100 / 100;


%Quadratic:
A = 4;
B = -10;
C = 4;

plus_sol = (-B+sqrt(B^2-4*A*C))/(2*A);
minus_sol = (-B-sqrt(B^2-4*A*C))/(2*A);



%Road Trip:
tankSize = 5.12;
tankMiles = 155.36;
miles = 350;
pricePerGal = 3.84;
cost = (miles * tankSize) * (pricePerGal / tankMiles);



%%%%%%%%%%%Homework 2:%%%%%%%%%%%%%%

%Compare Tips:
function [tipBefore tipAfter difference] = compareTips(subtot, stax, tipper)
sales = subtot.*(stax/100);
tipBefore = subtot.*(tipper/100);
tipAfter = (sales+subtot).*(tipper/100);
tipAfter = ceil(tipAfter.*100)./100;
tipBefore = ceil(tipBefore.*100)./100;
difference = abs(tipAfter-tipBefore);



%Log Base:
function out = logBase(n, b)
out = log(n)/log(b);
end


%Paint Room:
function [cans_5gal, cans_1gal] = paintRoom(dim1, dim2, dim3, windowArea, coatNum)
%Usage: [cans_5gal, cans_1gal] = paintRoom(dim1, dim2, dim3, windowarea)

%A function that takes in the three dimensions (in feet) of a rectangular 
%room, the total area (in square feet) of any windows in the room, and the 
%number of coats to be painted. The function's outputs are the number of 
%5-gallon and 1-gallon paint cans, respectively, needed to paint the area 
%of the room (excluding the floor) assuming one gallon of paint covers 350
%square feet.

%Caculate the areas of two adjacent walls in the room.
wall1 = dim1.*dim3;
wall2 = dim2.*dim3;
%Calculate the area of the ceiling.
ceiling = dim1.*dim2;
%Calculate the total surface area by adding the wall and ceiling
%areas and subtracting the window area.
saArea = 2.*wall1 + 2.*wall2 + ceiling - windowArea;
%Calculate the total area to be painted by multiplying the surface area by
%the number of coats.
area = saArea.*coatNum;
%Calculate the total number of gallons of paint needed.
gallons = area./350;
%Determine the maximum number of whole 5-gallon cans that can be used by 
%dividing the number of gallons by 5 and rounding down.
cans_5gal = floor(gallons./5);
%The number of 1-gallon cans needed is the remainder when the number of
%gallons is divided by 5. Round up to ensure there is enough paint in cases
%where a fraction of a can is needed.
cans_1gal = ceil(mod(gallons,5));
end



%Probability:

function [r g] = probability(red, green, rotr, rotg)
% A function that takes in the number of red and green apples in a bag, and
% the percentages of each that are rotten and calculates the probability of
% pulling a non-rotten red apple and a non-rotten green apple SEPARATELY
% from the bag.
%
% USAGE: [r g] = probability(red, green, rotr, rotg)

% Use the percentages to determine how many rotten apples there are.
rr = red.*(rotr./100);
rg = green.*(rotg./100);

% The probablility of pulling out a non-rotten red apple is the number of
% good red apples (total red apples - rotten red apples) divided by the
% total number of apples (total red apples + total green apples).
r = 100*(red-rr)./(red+green);
% The probablility of pulling out a non-rotten green apple is the number of
% good green apples (total green apples - rotten green apples) divided by
% the total number of apples (total red apples + total green apples).
g = 100*(green-rg)./(red+green);

end



%Quadratic:

function [sol1 sol2] = quadratic(A, B, C)
% Find the plus solution by doing quadratic formula with plus. Used
% parantheses because order of opreations matter in the formula.
sol1 = (-B + sqrt(B^2 - 4*A*C))/(2*A);
% Minus solution is the same method, except used a minus. 
sol2 = (-B - sqrt(B^2 - 4*A*C))/(2*A);
end



%Road Trip:

function cost = roadTrip(miles, gallons, triplength, gasprice)
%Usage: cost = milespergallon(miles, gallons, triplength, gasprice)
%
%A function that takes in the number of miles a car can travel with a
%specified number of gallons of gas, as well as the length of a road trip
%and the price of gas per gallon. The function outputs the cost of the
%amount of gas needed for the trip.

%Calculate the car's mpg.
mpg = miles./gallons;
%Use the mpg to calculate the number of gallons of gas needed for the trip.
gallons = triplength./mpg;
%Calculate the cost of the gas.
cost = gallons.*gasprice;
%Round to the nearest hundredth.
cost = ceil(cost*100)./100;
end



%%%%%%%%%%Homework 3:%%%%%%%%%%%

%ABC?s Arrays:

% Directions:
% Write the code to satisify the following directions. For each part, store
% your answer in the variable that is specified within the parantheses. 
%   Ex. Add 1 + 1 and store it in (GT).
% That means store the value of 1 + 1 in the variable GT. 

% Given Input Variables:
%   1. mat1 - An array of numbers 
%   2. mat2 - An array of numbers
%
% 1. Create an array that has the numbers 3 and 7 in the first row, 4 and 5
%    in the second row, and 13 and 2 in the third row. (A)
A = [3 7; 4 5; 13 2];

% 2. Create a array of ones that has 7 rows and 2 columns. (B)
B = ones(7, 2);

% 3. Find the number of rows and columns in "mat1", and save the number of
%    rows in (C) and the number of columns in (D). 
[C D] = size(mat1);

% 4. Vertically concatenate the arrays "mat1" and "mat2". (E)
E = [mat1; mat2];

% 5. Take the top half of the array "mat2" - that is, take all of the 
%    columns and the first half of the rows. Assume there are an even 
%    number of rows. (F)
F = mat2(1:end/2, :);

% 6. Transpose "mat2". (G)
G = mat2';

% 7. Linearize "mat1". "mat1" should go from a MxN array to a (M*N)x1
%    column vector. The new (M*N)x1 vector should be calculated by going
%    down the columns of "mat1". (H)   
H = mat1(:);

I = [true true true
    false false false
    true true true
    false false false
    true true true];

J = reshape(I, 3, 5);

end



%ABC?s Vectors:

% Given Input Variables (3):
%   1. (double) num - A positive integer. 
%   2. (double) vec - A row vector of numbers with at least 5 elements
%   3. (double) vec2 - Another row vector of numbers 

% 1. Create a vector that consists of "num" equally spaced numbers between 
% 2 and 11 (inclusive). Use the linspace() function. (A)
A = linspace(2,11,num);

% 2. Create a vector that goes from 3 to "num" in steps of 2. Use the 
% colon operator. (B)
B = 3:2:num;

% 3. Create a row vector of length "num" that consists only of 6s
% ([6 6 ...]). Use the zeros() or ones() function. (C)
C = 6*ones(1,num);

% 4. Create a column vector of length "num" that consists of random numbers 
% that are uniformly distributed between 2 and 9. (D)
D = 7*rand(num,1)+2;

% 5. Find the number of elements in the vector "vec." (E)
E = length(vec);

% 6. Find the smallest element in "vec" (F), and the index at which it is
% located (G).
[F G] = min(vec);

% 7. Sort the vector "vec" and store the sorted vector in (H).
H = sort(vec);

% 8. Concatenate vectors "vec" and "vec2", in that order (I).
I = [vec vec2];

% 9. Reverse "vec2" and store the resulting vector in (J).
J = vec2(end:-1:1);

% 10. Find the last element of "vec2" (K). Do it without using the 
% length() function.
K  = vec2(end);

% 11. Starting with the first element, find every other element in "vec2." 
% That is, find every element that occurs at an odd-numbered index (L).
L = vec2(1:2:end);

% 12. Find all of the numbers in "vec2" that are less than 5. (M)
M = vec2(vec2<5);
end



%Array Replace:

function in = arrayReplace(in, in2, num)
% Create a logical mask using in and apply the mask to in and in2. 
in(in == num) = in2(in == num);
end



%Barrel Shift:

function shifted = barrelShift(arr, num)
% The first thing we want to do is find the dimensions of our original 
% array, and then linearize it
[rows, cols] = size(arr);
arr = arr(:);

% The next thing we want to do is to figure out how many times we need
% to shift.  The way we are going to do is to figure out the total
% number of elements in the array (rows .* cols).  Then if we shift by
% this number, we are back to the original array.  An array of 9
% elements shifted 9 times is like never shifting at all.  Use the
% mod() function. This will also help us when it comes to negative
% numbers by making all of the shifts the same way (In a 9 element
% shift, a 5 shift and a -4 shift are actually the same.)
elements = rows .* cols;
num = mod(num, elements);

% Now we need to do the shifting.  The way we do this is by simple
% indexing.  We need to divide our vector in two parts, then
% concatenate back together in the right order.
firstPart = arr(1:end-num);
secondPart = arr(end-num+1:end);
arr = [secondPart; firstPart];

% Finally, we need to put the shifted array back into the original
% dimensions.
shifted = reshape(arr,rows,cols);
end


%Diving Score:

function overall = divingScore(scores, dd)
%remove the min and the max. Can use either the max() and min()
%and remove them, or sort the vector and remove the first and last 
%indices
scores = sort(scores);
scores([1 end]) = [];

%sum up the total scores and then multiply by the difficulty factor
overall = sum(scores).*dd;

%And this is how gold medals are achieved! 
end



%Interweave:

function out = interweave(in1, in2)
a = length(in1);
b = length(in2);
l = max(a,b);
out = zeros(1, 2.*l);
out(1:2:2.*a) = in1;
out(2:2:2.*b) = in2;
end


%Difference:

function out = myDiff(vec)
%This function calculates the difference between consecutive elements
%in a vector. The result is always has a length one less than the 
%original vector. 

%The problem takes a little bit of thinking. Basically we need to create a
%duplicate vector that is the original vector shifted to the right by one
%(dropping the last value) and subtract. We'll put a zero as the
%placeholder for the first value and to keep the vectors the same length. 

diff_vec = [0 vec(1:end-1)];
out = vec - diff_vec;

%Then we need to get rid of the first place holder value that we added
%earlier.

out(1) = [];
%Boom! 3 lines :)
end



%Ratio:

function interval = theRatio(data)
% Seperate out our data array
years = data(1,:);
pop = data(2,:);
girls = data(3,:);

% Find the increases in total population and female population
incPop = diff(pop);
incGirls = diff(girls);

% Find the ratios of increasements
ratioInc = incGirls ./ incPop;

% Find the highest ratio and its position
[bigInc, pos] = max(ratioInc);

% Determine the posistions of the interval
yearInd = [pos, pos + 1];
interval = years(yearInd);
end




%%%%%%%%%%%%Homework 4:%%%%%%%%%%%%%%

%ABC?s Strings:

% Given Input Variables:
%   1. str1 - A vector of characters (string)
%   2. str2 - A vector of characters (string)
%   3. vec1 - A vector of numbers
%   4. alph1 - A character that is a letter other than 'z' or 'Z'
%   5. var1 - A variable whose class is unknown
%   6. double1 - An integer 
%   7. str3 - A vector of characters that represents a number (string)
%   8. str4 - A vector of characters (string) that contains words separated
%      by commas

% 1. ASCII Values & Character Mapping. What are the ascii values of str1?
%    (A)
A = double(str1);

% 2. Casting to strings. Cast vec1 to a character array (string). (B)
B = char(vec1);

% 3. Slicing and Concatenation. Make a new string which is the
%    concatenation of all of str2, then a space, and then all of str1. (C)
C = [str2 ' ' str1];

% 4. Arithmetic Operations. Find the letter following alph1. Your
%    answer should be in the same case as alph1. (D)
D = char(alph1+1);

% 5. Logical Operations. Is the second letter of str2, which is an ascii
%    character, the same character/letter as alph1, which is also an ascii
%    character? The answer should be a logical true or false. (E)
E = str2(2)==alph1;

% 6. ischar(). Is var1 a string (character array)? The answer should be a
%    logical true or false. (F)
F = ischar(var1);

% 7. sprintf. Use sprintf to create the string:
%
%    'alph1 is the letter <alph1>' 
%
%    where <alph1> is replaced with the numerical value of the input
%    variable double1. For instance, if alph1 equaled b, the string would
%    be:
%
%       'alph1 is the letter b'
%    (G)
G = sprintf('alph1 is the letter %s', alph1);

% 8. strcmp(). Are str1 and str2 the same string? (H)
H = strcmp(str1,str2);

% 9. strcmpi(). Are str1 and str2 the same string if you ignore case? (I)
I = strcmpi(str1,str2);

% 10. class(). What is the class of var1? (J)
J = class(var1);

% 11. num2str().  double1 is variable representing a number.  Convert
%     double1 to a string representing that number. For example, if double1
%     is the number 5683968, you would convert it to the string '5683968'. 
%     (K)
K = num2str(double1);

% 12. str2num(). str3 is a string that represents a number.  Convert str3 
%     to that number using str2num. For example, if str3 is the string
%     '711', you would convert it to the number 711. (L)
L = str2num(str3);

% 13. strtok().  str4 is a string with words seperated by commas, like so:
%     'word1,word2,word3'
%     Use strtok to find the first word in the string and store it in (M); 
%     store the rest of the string in (N).
[M N] = strtok(str4,',');

% 14. strtok(). Store the second word in the original string as (O) and 
%     store the rest of the string in (P).
%     (Hint: you should use the variable (N) and indexing is not
%     necessary)
[O P] = strtok(N, ',');



%Caesar:

function [str] = caesar(str,num)

%Steps to solving caesar
%1. Shifting lowercase letters
%a. Find lowercase letters (use find function or logical indexing)
%b. Convert lowercase letters to a vector of numbers and subtract 97 (This makes the range of numbers 0-25)
%c. Use mod to shift the numbers
%d. Add 97 back to bring range back up to normal lowercase ascii values.
%e. Convert back to characters.
%2. Shift uppercase letters.
%a. Find uppercase letters
%b. Convert uppercase letters to a vector of numbers and subtract 65 (This makes the range of numbers 0-25)
%c. Use mod to shift the numbers
%d. Add 65 back to bring range back up to normal lowercase ascii values.
%e. Convert back to characters.
%3. Insert new upper and lowercase letters into original spots in str.

%First, find and change lowercase letters
%Find indices
LowerIndex = find(double(str)>(double('a')-1) & double(str)<(double('z')+1));
%Uses indices to isolate letters in the string
LowerLetters = str(LowerIndex);    
%Converts letters to numbers and changes range of numbers to [0,25]
NumLowerLetters = double(LowerLetters) - 97;
%Uses mod to shift the numbers
ModdedNumbers = mod(NumLowerLetters+num,26);
%Shifts the range of numbers back to ascii values 
ShiftedNumbers = ModdedNumbers + 97;
%Converts to character
Lowercase = char(ShiftedNumbers);                   

%Second, find and change uppercase letters (same process as lowercase)
UpperIndex = find(double(str)>(double('A')-1) & double(str)<(double('Z')+1));
UpperLetters = str(UpperIndex);
NumUpperLetters = double(UpperLetters) - 65;
ModdedUpperNumbers = mod(NumUpperLetters+num,26);
ShiftedUpperNumbers = ModdedUpperNumbers + 65;
Uppercase = char(ShiftedUpperNumbers);

%Now, put the lower and uppercase letters back in str
str(UpperIndex) = Uppercase;
str(LowerIndex) = Lowercase;

end



%Disemvowel:

function str = disemvowel(str, lowVowel)

% Get uppercase vowel.
upVowel = lowVowel - 32;

% Create mask where trues occur in indices where the corresponding
% characters are not the uppercase nor lowercase vowel and false occurs
% otherwise. An & operator is used because the uppercase vowel in the 
% string would yield true in the mask when compared to "lowVowel" but
% false when compared to "upVowel," and we want the whole incidence to
% be false since there is a vowel match.
nvow_mask = str ~= lowVowel & str ~= upVowel;

% Index original string with mask.
str = str(nvow_mask);
end



%Interweave:

function out = interweave(str1,str2)

%find the length of each string
x1 = length(str1);
x2 = length(str2);

%find the maximum of the two lengths
x3 = max([x1,x2]);

%make an empty vector that is twice the size of the largest string
str = zeros(1,2.*x3);


%fill in the odd indices with string 1
str(1:2:x1.*2) = str1;

%fill in the even indices with string 2 reversed
str(2:2:x2.*2) = str2(end:-1:1);

%fill in any spaces with a hyphen
str(str == 0) = '-';

%output the final string
out = char(str);
end



%Ottendorf:

function decoded = ottendorf(passage, rows, cols)
% Take the size of the passage.  This will help us get to a single
% number in which to index the passage
[R C] = size(passage);

% We want to take a single number to index with.  Essentially,
% linearizing the array and indexing that way.  In order to figure out
% these indexes, it takes a bit of simple math.  To singlely index an
% array, we go down the column.  This means the rows become our index.
% Once you reach the last row of the first column, you go to the first
% row of the next column.  So to get a single number, we add our rows
% and something to do with our columns.  Well, the first column,
% nothing gets added.  The 2nd column, we add the number of rows to get
% to the 2nd column, first row.  That is the expression of our TOTAL
% number of rows in the array times our input columns - 1.  Make sure
% order of operations is correct.  We want cols - 1 before we multiply
% rows.
ind = rows + R.*(cols-1);

% Now we use these indexes to pull out the secret message and then we
% make everything lower case
decoded = passage(ind);
decoded = lower(decoded);
end




%Phone Convert:

function out = phoneConvert(in)

% Replace the letters with their respective numbers.
in(in >= 'A' & in <= 'C') = '2';
in(in >= 'D' & in <= 'F') = '3';
in(in >= 'G' & in <= 'I') = '4';
in(in >= 'J' & in <= 'L') = '5';
in(in >= 'M' & in <= 'O') = '6';
in(in >= 'P' & in <= 'S') = '7';
in(in >= 'T' & in <= 'V') = '8';
in(in >= 'W' & in <= 'Z') = '9';

% Find the hyphen.
hy = strfind(in, '-');
% Since there may be more than one hyphen and we only want to find the last
% one, we index with end.
hy = hy(end);
% 1:hy (where the hyphen is) is everything before the letters started
% (which we want to keep). Adding the "+3" automagically takes the first
% three numbers (which were letters) that we want. Then concatenate these
% numbers with the hyphen and the last four numbers.
out = [in(1:hy+3) '-' in(hy+4:hy+7)];
end





%String Knot:

function [out1 out2] = stringKnot(in)

%Apply the fold to the right. 
out1 = [in in(:, end:-1:1)];

%Apply the fold down. 
out1 = [out1 ;out1(end:-1:1, :)];

%Index out the outer ring.
out2 = [out1(1, :), out1(2:end, end)', out1(end, end-1:-1:1), out1(end-1:-1:2,1)'];

%Convert to char
out2 = char(out2);

end





%%%%%%%%%%%%%%%Homework 5:%%%%%%%%%%%%%%


%Football Math:

function out = footballMath(yardsToGo, playYards)
% Parse the input for the current down and the current yards to go
[down, yards] = strtok(yardsToGo, '&');
curDown = str2num(down);
curYards = str2num(yards(2:end));

% Update the downs and the yards to go
newYards = curYards - playYards;
newDown = curDown + 1;

% Lets go ahead and write the output, assuming that the downs and yards
% are valid.  If they aren't we will change it later with our if
% statement.
out = sprintf('%d&%d', newDown, newYards);

% Make sure that the newYards and newDown are valid
if newYards < 1
out = '1&10';
elseif newDown > 4
out = 'turnover on downs';
end
end




%Friend or Foe:

function [result] = friendOrFoe(contA,contB,fund)
[nameA hyphenchoiceA] = strtok(contA,'-');
choiceA = hyphenchoiceA(2:end);
% gets the name and choice of contestant A into separate strings
[nameB hyphenchoiceB] = strtok(contB,'-');
choiceB = hyphenchoiceB(2:end);
% gets the name and choice of contestant B into separate strings
if strcmp(choiceA,'Friend') & strcmp(choiceB,'Friend') %both 'Friend'
numfund = str2num(fund(2:end));
% gets the amount of money as a double
result = sprintf('Congratulations! %s and %s will split the trust fund and each take home $%d!',nameA,nameB,numfund./2);
elseif strcmp(choiceA,'Friend') & strcmp(choiceB,'Foe') %A=>'Friend', B=>'Foe'
result = sprintf('Ouch! %s stabs %s in the back and takes home the whole %s! For shame, %s, for shame!',nameB,nameA,fund,nameB);
elseif strcmp(choiceA,'Foe') & strcmp(choiceB,'Friend') %A=>'Foe', B=>'Friend'
result = sprintf('Ouch! %s stabs %s in the back and takes home the whole %s! For shame, %s, for shame!',nameA,nameB,fund,nameA);
else %a.k.a. both 'Foe'
result = sprintf('Oooh! %s and %s both turned foe and will leave with a whopping $0.',nameA,nameB);
end
end




%Leap Year:

function out = leapYear(in)
if mod(in, 4)~=0
out = 'It is not a leap year.';
else
if mod(in, 100) ~= 0
out = 'It is a leap year.';
else
if mod(in,400) == 0 
out = 'It is a leap year.';
else
out = 'It is not a leap year.';
end
end
end
end




%Sorting Hat:

function house = sortingHat(name, traits)
g = length(find(name == 'g' | name == 'G'));
h = length(find(name == 'h' | name == 'H'));
r = length(find(name == 'r' | name == 'R'));
s = length(find(name == 's' | name == 'S'));
factor = [g, h, r, s];
factor(factor == 0) = 1;
traits = traits .* factor;
[~, ind] = max(traits);
switch ind
case 1
house = 'Gryffindor';
case 2
house = 'Hufflepuff';
case 3
house = 'Ravenclaw';
case 4 
house = 'Slytherin';
end
end




%%%%%%%%%%%%%Homework 6:%%%%%%%%%%%%


%Bouncy House:

function out=bouncyHouse(cA)
[r c] = size(cA);
arr = zeros(r,c);
for i = 1:r
for j = 1:c
if cA(i,j)=='g'
cornerVec = [arr(i,j-1) arr(i-1,j-1) arr(i-1,j)];
arr(i,j) = min(cornerVec)+1;
end
end
end

sz = max(max(arr));

if sz < 4
out = 'Sorry. There''s not enough room for a bouncy house.';
elseif sz == 4
out = 'Small';
elseif sz == 5
out = 'Medium';
else
out = 'Large';
end




%Get Spin:

function spin = getSpin(seed, index)
    % Seed the random numbers and create a random number vector with
    % numbers between 1 and 20 that will turn into the spins.
    rand('seed', seed);
    possible = round(19 .* rand(1,150) + 1);
    ind = possible(index);
    % Get the current random spin
    spinCell = {'bankrupt', '300', '450', 'lose-a-turn', '1000', '750', '600', ...
        '250', 'bankrupt', 'lose-a-turn', '400', '1500', '1250', '550', '700', ...
        'lose-a-turn', '900', '500', '1300', '350'};
    spin = spinCell{ind};
end



%Multi Table:

function chart=multiTable(num)
%Creates a multiplication table for the given number

%This will be done by creating each row one at a time and concatenating the
%newly formed row to the array being built.  The first row is a vector from
%0 to the given number.  A for loop is then used to create the rest of the
%rows.  The perameter of the for loop is set by a vector of 1:num, which is
%mutiplied by the first, pre-existing row.  Doing this causes the first
%column to be zeroes, so the last step is to reset the first column to
%0:num.

chart=0:num;
%Creates the first row of the array
for ind=1:num  %numbers to be multiplied to create the rows
chart=[chart; ind.*chart(1,:)];  
%creates the row of multiples and concatenates that row to the array                                      
end
chart(:,1)=0:num;  %resets the first column to 0:num
end



%Weakest Link:

function [bank, wLink] = weakestLink(conf, answers)
    % Initializations
    wrongAnswers = zeros(1,6);
    bank = 0;
    numCorrect = 0;
    playerIndex = 1;
    % We will need a copy of this later
    toAddConf = conf;
    % Set up a confidence vector that will be long enough to accomidate
    % each answer given.  We will do this through a simple loop to
    % concatenate.
    numCats = ceil(length(answers) ./ 6);
    % Only need to go to numCats - 1 because we already start with one.
    for i = 1:numCats - 1
        % Add the original confidence levels to the running vector
        conf = [conf toAddConf];
    end
    % Loop through the answers to play the game
    for i = 1:length(answers)
        % Check to see if we need to bank
        if numCorrect >= conf(i)
            % If yes, then add money to bank via the provided formula, and 
            % reset runningMoney and numCorrect
            bank = bank + (250 .* (2.^(numCorrect - 1)));
            numCorrect = 0;
        end
        % Check to see if the answer is correct.  If yes increment
        % numCorrect
        if answers(i)
            numCorrect = numCorrect + 1;
        else
        % Else that person answered wrong so increment their wrong count
            wrongAnswers(playerIndex) = wrongAnswers(playerIndex) + 1;
            numCorrect = 0;
        end
        % Continue with round by going to next person and making sure.
        % Remember to account for Fred going to Amy.
        playerIndex = playerIndex + 1;
        if playerIndex > 6
            playerIndex = 1;
        end
    end
    % Find who answered the most incorrect
    [val index] = max(wrongAnswers);
    % Output the name of that player
    switch index
        case 1
            wLink = 'Amy';
        case 2
            wLink = 'Brad';
        case 3
            wLink = 'Chris';
        case 4
            wLink = 'Daisy';
        case 5
            wLink = 'Erica';
        case 6
            wLink = 'Fred';
    end
end




%Wheel of Fortune:

function [winner, numSpins, bank] = wheelOfFortune(phrase, puzzle, letters, seed)
    % Initialize the things we need
    bank = [0 0 0];
    numSpins = 0;
    playerIndex = 1;
    solved = false;
    curLetter = letters(1);
    letters = letters(2:end);    
    % Create our loop that will run while the puzzle is not solved
    while ~solved
        % Check to see if the current letter is a vowel
        if any(curLetter == 'AEIOU')
            % If it is, then we need to subtract $150 from their bank in
            % order to buy a vowel
            bank(playerIndex) = bank(playerIndex) - 150;
            % Check to see if the vowel is in the phrase
            if any(phrase == curLetter)
                % If so, then put the vowels into the puzzle
                puzzleIndex = find(phrase == curLetter);
                puzzle(puzzleIndex) = phrase(puzzleIndex);
            else
                % If not, then it is the next players turn
                playerIndex = playerIndex + 1;
            end
            % Grab the next letter that is guessed
            curLetter = letters(1);
            letters = letters(2:end);
        % Else the letter is a consonant
        else
            % Spins index gets incremented, and we get the spin
            numSpins = numSpins + 1;
            spin = getSpin(seed, numSpins);
            % If the spin is a bankrupt, then we zero out that players bank
            % and go to the next player
            if strcmp(spin, 'bankrupt')
                bank(playerIndex) = 0;
                playerIndex = playerIndex + 1;
            % If the spin is lose-a-turn, we go to the next player
            elseif strcmp(spin, 'lose-a-turn')
                playerIndex = playerIndex + 1;
            % Otherwise its a monetary value
            else
                % Find out how many (if any) of the current letter is in
                % the phrase and add the appropriate money to that players 
                % bank
                if any(phrase == curLetter)
                    puzzleIndex = find(phrase == curLetter);
                    numLetters = length(puzzleIndex);
                    moneyEarned = numLetters .* str2num(spin);
                    bank(playerIndex) = bank(playerIndex) + moneyEarned;
                    % Fill in the puzzle at the letters indexes
                    puzzle(puzzleIndex) = phrase(puzzleIndex);
                % Else the letter isn't in the phrase and you go to the
                % next player
                else
                    playerIndex = playerIndex + 1;
                end
                % Get the next letter
                curLetter = letters(1);
                letters = letters(2:end);
            end
        end
        % The person after Player3 is Player1
        if playerIndex > 3
            playerIndex = 1;
        end
        % Check to see if the puzzle is solved by checking to see if there
        % are any periods in the puzzle
        if ~any(puzzle == '.')
            solved = true;
        end
    end
    % Assign the winner into the variable
    winner = sprintf('Player%d', playerIndex);
end





%%%%%%%%%%%%Homework 7:%%%%%%%%%%%%%



%Shakespeare:

function Shakespeare(passage,wordList)

fh = fopen(passage,'r');
ln = fgetl(fh);
name=ln;

plainEnglish = fopen([name '.txt'],'w');
i = 1;

while ln~=-1
    fh2 = fopen(wordList,'r');
    ln2 = fgetl(fh2);
    while ln2~=-1
    [word,rep] = strtok(ln2,', ');
        if any(strfind(ln, word))
            ln = strrep(ln,word,rep(3:end));
        end
    ln2=fgetl(fh2);
    end
    if i==1
        fprintf(plainEnglish,ln);
        i=i+1;
    else
        fprintf(plainEnglish,'\n%s',ln);
    end
ln=fgetl(fh);
end
fclose(fh);
fclose(fh2);
fclose(plainEnglish);




%ABC?s File I/O:

% Given Input Variables:
%   1. f1 - A file name (including the extension .txt) of a given text file 
%     (char)
%   2. f2 - A file name (including the extension .txt) of a text file that 
%      should be written (char)

% 1. fopen(). Open f1 for read access and store the file handle in (fh1)
fh1=fopen(f1,'r');
% 2. fgets(). Read in the first line of fh1 using fgets(). (line1)
line1=fgets(fh1);
% 3. fgetl(). Read in second line of f1 using fgetl(). (line2)
line2=fgetl(fh1);
% 4. What is the new line character in Matlab? Express answer as a string. 
% (A)
A = '\n';

% 5. true or false. When applicable, fgets() will return the new line
% character at the end of the string whereas fgetl() will NOT return the
% new line character. Answer should be the class logical. (B)
B = true;

% 5. fprintf(). Write line2 to a file with a file name specified by the
% variable f2. You will first need to open the file with write access.
fh2=fopen(f2,'w');
fprintf(fh2,'%s',line2);

% 6. fclose(). Use fclose() to close both f1 and f2. Do NOT use fclose all. 
fclose(fh1);
fclose(fh2);



%Math Problem:

function out = mathProblem(file,num)
fh = fopen(file);
out = num;
line = fgetl(fh);
while ischar(line)
[word number] = strtok(line);
number = str2num(number(2:end));
switch word
case 'Add'
out = out + number;
case 'Subtract'
out = out - number;
case 'Divide'
out = out./number;
case 'Multiply'
out = out.*number;
end
line = fgetl(fh);
end
fclose(fh);
end



%Secret Message:

function secretMessage(file)
%open the file to read from
fh1=fopen(file, 'r');
%initialinze the while loop
keepgoing=true;
%start line counter
linenum=1;
%make the new file name using everything except the '.txt' and append the
%'_decoded.txt' onto the end
newfilename=[file(1:end-4), '_decoded.txt'];
%open a new file to write to
fh2=fopen(newfilename, 'w');
while keepgoing
%get line with new line character using the fgets function
line=fgets(fh1);
%too end the loop when the end of the file is reached, check to see if
%the line is a string or the end of a file.
keepgoing=ischar(line);
%check if the line is odd
if mod(linenum, 2)==1   
%print to the odd line to that file
fprintf(fh2, line);
end
%update line number
linenum=linenum+1;
end
%close files
fclose(fh1);
fclose(fh2);
end

Word Wrap:
function wordWrap(filename_in, filename_out, n)
fh = fopen(filename_in , 'r'); 
fh2 = fopen(filename_out , 'w');
line = fgetl( fh ); 
[first rem] = strtok(line);
holder = [first ' '];
i = 1;
while ~isempty(rem) 
if mod(i,n)==0
holder(end) = [];
fprintf(fh2, '%s \n',holder);
holder = ''; 
end
[tok rem] = strtok(rem) ;
holder = [holder tok ' ']; 
i = i+1; 
end

fprintf(fh2,'%s\n',holder) ;
fclose(fh); 
fclose(fh2); 
end



%%%%%%%%%%%%%%%%%Homework 8:%%%%%%%%%%%%%

%ABC?s Cell Arrays:

% Given Input Variables:
%   1. ca1 - A cell array of at least size 4. 
%   2. ca2 - A cell array. 
%   2. D - A cell array of at least size 3. 

% 1. Creating. Create a cell array with the length of 4 where the first 
% cell contains the vector [true false false], the second cell contains the
% string 'Georgia Tech', the third cell contains the number 23, and the
% fourth cell contains a cell with the vector [1 1 2 3 5 8] (A).
A = {[true false false], 'Georgia Tech', 23, {[1 1 2 3 5 8]}};

% 2. Empty Cell Arrays. Create an empty cell array. (B)
B = {}; 

% 3. Accessing and Indexing. Create a cell array that contains the 2nd and 
% 4th cells of the cell array ca1. (C)
C={ca1{2}, ca1{4}};

% 4. Deleting. Delete the third cell of the cell array D. For example,
% if D = {[1 0 1 0], 'I love CS1371', {[11,12,13,14]}, [true true false
% true]}, after running the code, D should equal {[1 0 1 0], 'I love
% CS1371', [true true false true]}.
D(3)=[];

% 5. Class/Type. What is the class/type of the first cell in ca2? (E)
E=class(ca2(1));

% 6. Class/Type. What is the class/type of the contents inside the first
% cell of ca2? (F)
F=class(ca2{1});

end


%ABC?s High Level IO:

% Given Input Variables:
%   1. csv1 - Given comma separated value (.csv) file 
%   2. dlm1 - Given delimited (.dlm) file 
%   3. dlm2 - .dlm file name to write to
%   4. xls1 - Given excel (.xls) file 
%   5. xls2 - .xls file name to write to
% Note: All files input variables will be in the format  
% i.e.: csv1 = 'file.csv'

% a) Reading comma-separated files. Read in the values of csv1 and assign
% to variable csvArray.
csvArray = csvread(csv1);

% b) Writing comma-separated files. Write the even columns of csvArray to
% a new file called 'csv2.csv'.
csvwrite('csv2.csv', csvArray(:, 2:2:end));

% c) Reading an Excel worksheet. Read in an Excel file whose filename is
% given as an input to this function in xls1.  Store the resultant outputs
% in (xlsNum), (xlsText), and (xlsRaw).
[xlsNum xlsText xlsRaw] = xlsread(xls1);

% d) Writing Excel files. Write the xlsText data to xls2.
xlswrite(xls2, xlsText);

% e) Reading a delimited text file. Read in the values of dlm1 that is
% delimited with the character '*'. (dlmArray)
dlmArray = dlmread(dlm1, '*');

% f) Writing a delimited text file. Write a copy of dlmArray that is
% delimited with '^'. (dlm2)
dlmwrite(dlm2, dlmArray, '^');



%Air Traffic Control:

function out = airTrafficControl(radar, file, cellDist)
% Read in the file to later figure out the speeds of the planes
[num txt raw] = xlsread(file);
% Get the size of the radar
[rows cols] = size(radar); 
% Find the airport coordinates
apRow = ceil(rows./2);
apCol = ceil(cols./2);
% Initialize our storage for plane, row pos, col pos.  The first row
% will be our plane code, the second will be row pos, third col pos.
planeInfo = [];
% We need to iterate through the entire radar and pull out the plane
% abbreviations and the row/col positions of those planes
for r = 1:rows
for c = 1:cols
% Check for a string in the cell
if ~isempty(radar{r,c})
% If the string exists make sure that it isn't the airport
% (We don't care about it.)
if ~strcmp(radar{r,c}, 'ATC')
% Save the airplane info
apInfo = {radar{r,c}; r; c};
planeInfo = [planeInfo, apInfo];
end
end
end
end
% Get the size of the planeInfo cell array (we only care about the cols
% because we know there are three rows)
[piRow, piCol] = size(planeInfo);
% Initialize a distance vector.  Calculate the distances of each
% airplane.  We are going to calculate the number of cells away, then
% we will multiply our cellDist.
%
% We will also do a speed lookup for each plane while we are
% calculating the distances, so we will intialize that vector as well
distance = [];
speed = [];
for ind = 1:piCol
% Find the differences between the rows and the columns
diffRow = abs(planeInfo{2,ind} - apRow);
diffCol = abs(planeInfo{3,ind} - apCol);
% Apply pythagorean theorem.  Once you find the total cells,
% multiply by the cellDist
totalCells = sqrt(diffRow.^2 + diffCol.^2);
totalDist = totalCells .* cellDist;
distance = [distance, totalDist];
% Now lets find the plane speed.  Figure out where the plane is in
% the input file
planeAbbr = planeInfo{1,ind};
speedInd = strcmp(planeAbbr, raw(:,1));
% Grab the planes speed and store it
planeSpeed = raw{speedInd,2};
speed = [speed, planeSpeed];
end
% Using the distance of each airplane and the speed its travelling,
% figure out the times it will take each plane to get to the airport
times = distance ./ speed;
% Sort the times, but indicies matter
[times, sortedInd] = sort(times);
% Get the output
planes = planeInfo(1,:);
out = planes(sortedInd);
end

Ice Skate:
function [newca winner] = iceSkate(ca)
%Usage: [newca winner] = iceSkate(ca)
% A function that takes in a cell array of ice skaters and their scores in
% three different events, computes and appends each skater's overall score
% to the cell array, and also outputs the name of the winning skater

%Find the size of the initial cell array
[r c] = size(ca);

%Pull out the names of the events, which will be in the 2nd through 4th
%columns of the cell array
events = ca(1,2:4);

%Sort the events in alphabetical order to determine the order of the events
%in the columns
[sorted ind] = sort(events);

%The Bonus Event will be first in the alphabetized list, then the Long
%Program, then the Short Program. Use the second output of sort to find
%what column each event was originally in
bonuscol = ind(1);
longcol = ind(2);
shortcol = ind(3);

%Initialize an empty vector to store the overall scores as they are
%computed
newcol = [];

%Iterate through each skater
for i = 2:r
%For each skater, iterate through the columns containing the event
%scores
for j = 2:4
%If the 'Bonus Event' string was in the column corresponding to the
%iteration number, the current set of scores are the Bonus Event 
%scores (e.g. if it was in the 2nd column, its index in the ind 
%vector will be 1. 1+1 = 2, which matches the index, j, of our 
%inner for loop on the first iteration)
if j==bonuscol+1
score1 = 0.1*mean(ca{i,j});
%Repeat for the Long Program
elseif j==longcol+1
score2 = 0.6*mean(ca{i,j});
%Repeat for the Short Program
else
score3 = 0.3*mean(ca{i,j});
end
end

%The player's final score is the sum of the weighted scores for each of
%the three events
finalscorecell = {score1+score2+score3};
%Append the final score contained in a cell to the list of all the
%player's final scores
newcol = [newcol; finalscorecell];
end

%In order to determine the winner, change the cell array of skater scores
%into a vector and find the max
totals = cell2mat(newcol);
[maxscore ind] = max(totals);

%The winner's name is located at the max index + 1 (due to the header in
%the first row)
winner = ca{1+ind, 1};

%Add the heading 'Overall Score' and append the new column of overall 
%scores to the cell array
newcol = [{'Overall Score'}; newcol];
newca = [ca newcol];
end
Restock:
function cOut = reStock(file,cArr)

[~,txt,~] = xlsread(file);  %reads in file

[r,c] = size(cArr);
[r2,c2] = size(txt);
cOut = {};
vec = [];
count = 1;

for y = 1:c   
str = '';
for x = 2:r    
num = cArr{x,y};
str = [str,txt{num+1,y}];
end
if length(str)~=r-1
cOut{count} = txt{1,y}
count = count+1;
end
end     
end

Txt2xls:
function txt2xls(fileName)
fh = fopen(fileName);
allGrades = {};
rowNumber = 1;
line = fgetl(fh);
while ischar(line)
rowNumber = rowNumber + 1;
colNumber = 0;
while ~isempty(line)
colNumber = colNumber  + 1;
[item, line] = strtok(line, ',');
[type, thing] = strtok(item, ':');
thing(1:2) = [];
if type(1) == ' '
type(1) = [];
end
if rowNumber == 2
allGrades{1, colNumber} = type;
end
allGrades{rowNumber, colNumber} = thing;   
end
line = fgetl(fh);
end
fclose(fh);
[name, ext] = strtok(fileName, '.');
xlswrite([name, '.xls'], allGrades);
end
