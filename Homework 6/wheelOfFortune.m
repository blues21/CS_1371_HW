function [winner spins earning] = wheelOfFortune(phrase, puzzle, letters, seed)

% Set up the vector number of players
players = [1, 2, 3];

% During the while loop, the game will continue to run
activeGame = true;

% x is the player number
numPlayer = 1;

% spins is the number of spins that have been used during the round
spins = 0;

% earned is the vector number of winnings per person
earning = [0 0 0];


% this is the while loop that begins the game.
while activeGame
   
    % The current player is then set up within the while loop
    myTurn = players(numPlayer);
    
    
    if any(letters(1) == 'AEIOU');
        % The code then checks for any vowels and if so, removes 150$ from the
        % current players and makes the spin set to 0.
        earning(myTurn) = earning(myTurn) - 150;
        spinResult = '0';
    else
        % otherwise, the spin rolls and adds one to the number of spins.
        spinResult = getSpin(seed, spins + 1);
        spins = spins + 1;
    end


    % The spin result is then compared to see if it matches bankrupt. If it
    % does it skips their turn, and resets their earnings to zero.
    if strcmp(spinResult, 'bankrupt')
        
        % moves to the next player
        numPlayer = numPlayer + 1;
        
        % if the player num passes 3, it loops so the game may continue
        if numPlayer > 3
            numPlayer = 1 
        end
        
        % BOOM. Bankrupt... *cue sad music*
        earning(myTurn) = 0;

        continue;

        
    % Now, it checks if the spin landed on lose-a-turn. If so, it skips
    % them, but it doesn't reset their money.
    elseif strcmp(spinResult, 'lose-a-turn')

        % moves to the next player
        numPlayer = numPlayer + 1;

        
        % loops when it passes the 3rd player
        if numPlayer > 3
            numPlayer = 1;
        end

        continue;

        
    % If they haven't lost their turn, money, or soul. Then there is some
    % value that their guess is worth.
    else

        value = str2num(spinResult);

    end

    % If their luck is so bad that they don't guess anything correctly,
    % then it moves on to the next player.
    if ~any(letters(1) == phrase)

        % same script as usual to move to the next player, and or reset the
        % count
        numPlayer = numPlayer + 1;
        if numPlayer > 3
            numPlayer = 1;
        end

    else
        
        % otherwise fill in the letter that was guessed on the board
        puzzle(phrase == letters(1)) = letters(1);   
    
    end
    
    % find how many multiples of the guessed letters there are.
    multiples = length(find(letters(1) == phrase));
    
    % add the earnings to the vector of the current player.
    earning(myTurn) = earning(myTurn) + (value*multiples);
    
    
    letters(1) = [];

    
    % Winner!!
    if strcmp(puzzle, phrase)
        winner = ['Player' num2str(myTurn)];
        activeGame = false;
    end

end