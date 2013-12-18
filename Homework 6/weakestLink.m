function [money kicked] = weakestLink(conf, ans)

% i is the indices
i = 1;
% set up the vector determining who will be kicked
kick = [];

% go through all of the answers in groupings of six, then determine who had
% the most wrong.
for i = 1:length(conf)
    weak = ans(i:6:end);
    weakplace = strfind(weak, 0);
    weaknum = length(weakplace);
    kick(i) = [weaknum];
end

[a b] = max(kick);

% "You are the weakest link... goodbye"
switch b
    case 1
        kicked = 'Amy';
    case 2
        kicked = 'Brad';
    case 3
        kicked = 'Chris';
    case 4
        kicked = 'Daisy';
    case 5
        kicked = 'Erica';
    case 6
        kicked = 'Fred';
end

% Declaration of Variables
bank = 0;
correct = 0;
len = length(ans);

for i = 1:len
    
    % Don't let more than the six people play, that's just not fair
    m = mod(i,6);
    
    if m == 0
        m=6;
    end
    
    % confidence
    if correct > 0
        if correct >= conf(m)
            bank = bank + (250 .* (2 .^ (correct-1)));
            correct = 0;
        end
    end
    
    % if correct then the number goes up by one
    if ans(i) == 1
        correct = correct + 1;
        
    % if it's wrong, well shame on you it moves back down.
    elseif ans(i) == 0
        correct = 0;
    end
end

% this is just a change of variable name to the output
% and like dr. dre would say, putting money in the bank. $$$$
money = bank;

