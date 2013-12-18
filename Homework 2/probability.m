function[redApple greenApple] = probability(redTotal, greenTotal, rottenRedPercent, rottenGreenPercent)
    
    % This is the total number of apples in the bag
    totalApples = redTotal + greenTotal;
    
    % Here we turn the rottenRedPercent into an actual percentage from a
    % number
    rottenRedPercent = rottenRedPercent ./ 100;
    
    % Here we divide to find the amount of red apples that are actually
    % rotten
    redRotten = redTotal .* rottenRedPercent;
    
    % Subtracting the rotten from the total reds and then dividing by the
    % total number of apples.
    redApple = (redTotal - redRotten) ./ totalApples;
    
    % Here we turn the rottenGreenPercent into an actual percentage from a
    % number
    rottenGreenPercent = rottenGreenPercent ./ 100;
    
    % Here we divide to find the amount of green apples that are actually
    % rotten
    greenRotten = greenTotal .* rottenGreenPercent;
    
    % Subtracting the rotten from the total greens and then dividing by the
    % total number of apples.
    greenApple = (greenTotal - greenRotten) ./ totalApples;
    
    