function [newPos] = footballMath(oldPos, playYards)

[down yards] = strtok(oldPos, '&');

yards(1) = '';

yards = str2num(yards);
down = str2num(down);

left = yards - playYards;

if(left < 0)
    newPos = '1&10';
else
    down = down +1;

    if(down > 4)
        newPos = 'turnover on downs';
    else
        down = num2str(down);
        yards = num2str(left);
        newPos = [down '&' yards];
    end
end
