function output = facebookLUV(input)
% Write a function using a switch statement that takes in a relationship
% status from a facebook profile and outputs the percent chance you have
% of getting this person to start dating you. (This assumes that this person
% is attracted to you.) Here are the (most likely completely inaccurate) statistics:

% 100% chance if it reads "Single" or "Divorced"
% 75% chance if it reads "It's complicated" or "In an open relationship"
% 60% chance if it reads "Separated" or "Widowed"
% 30% chance if it reads "In a relationship"
% 5% chance if it reads "Engaged"
% 1% chance if it reads "Married"



switch input
    case {'Single', 'Divorced'}
        output = 100;
    case {'It''s complicated', 'In an open relationship'}
        output = 75;
    case {'Separated','Widowed'}
        output = 60;
    case {'In a relationship'}
        output = 30;
    case {'Engaged'}
        output = 5;
    case {'Married'}
        output = 1;
end