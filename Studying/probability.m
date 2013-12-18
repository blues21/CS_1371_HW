function [nonRR nonRG] = probability(redNum, greenNum, redBP, greenBP)

total = redNum + greenNum;

redGP = 100-redBP;
greenGP = 100-greenBP;


nonRR = ((redNum * redGP/100)/total)*100;

nonRG = ((greenNum * greenGP/100)/total)*100;



end