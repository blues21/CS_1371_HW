function [output] = phoneConvert(input)

[first, second] = strtok(input, 'A:B:C:D:E:F:G:H:I:J:K:L:M:N:O:P:Q:R:S:T:U:V:W:X:Y:Z');

findLetterA = strfind(second, 'A');
string(findLetterA) = 2;
findLetterB = strfind(second, 'B');
string(findLetterB) = 2;
findLetterC = strfind(second, 'C');
string(findLetterC) = 2;
findLetterD = strfind(second, 'D');
string(findLetterD) = 3;
findLetterE = strfind(second, 'E');
string(findLetterE) = 3;
findLetterF = strfind(second, 'F');
string(findLetterF) = 3;
findLetterG = strfind(second, 'G');
string(findLetterG) = 4;
findLetterH = strfind(second, 'H');
string(findLetterH) = 4;
findLetterI = strfind(second, 'I');
string(findLetterI) = 4;
findLetterJ = strfind(second, 'J');
string(findLetterJ) = 5;
findLetterK = strfind(second, 'K');
string(findLetterK) = 5;
findLetterL = strfind(second, 'L');
string(findLetterL) = 5;
findLetterM = strfind(second, 'M');
string(findLetterM) = 6;
findLetterN = strfind(second, 'N');
string(findLetterN) = 6;
findLetterO = strfind(second, 'O');
string(findLetterO) = 6;
findLetterP = strfind(second, 'P');
string(findLetterP) = 7;
findLetterQ = strfind(second, 'Q');
string(findLetterQ) = 7;
findLetterR = strfind(second, 'R');
string(findLetterR) = 7;
findLetterS = strfind(second, 'S');
string(findLetterS) = 7;
findLetterT = strfind(second, 'T');
string(findLetterT) = 8;
findLetterU = strfind(second, 'U');
string(findLetterU) = 8;
findLetterV = strfind(second, 'V');
string(findLetterV) = 8;
findLetterW = strfind(second, 'W');
string(findLetterW) = 9;
findLetterX = strfind(second, 'X');
string(findLetterX) = 9;
findLetterY = strfind(second, 'Y');
string(findLetterY) = 9;
findLetterZ = strfind(second, 'Z');
string(findLetterZ) = 9;

first3 = string(1:3);
last4 = string(4:7);
first3 = num2str(first3);
last4 = num2str(last4);
string = [first3 '-' last4];


stringspace = strfind(string, ' ');
string(stringspace) = [];

output = [first string];