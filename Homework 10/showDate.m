function the_date = showDate(phrase)

% Use strtok() to obtain the necessary variables for month, day, and year.
[month rest] = strtok(phrase,'-');
[day rest] = strtok(rest,'-');
[year rest] = strtok(rest,'-');

% str2num() will automatically remove any leading zeros and convert string
% inputs to doubles if all the values within the argument have a numerical
% equivalent (range from '0' to '9').
month = str2num(month);
day = str2num(day);
year = str2num(year);

% Initialize the variable 'invalid'.
invalid = false;

% Convert the string to a month if the day falls within a valid region.
switch month
    case 1
        if day >= 1 && day <= 31
            month = 'January';
        else
            invalid = true;
        end
    case 2 % Oh no... Leap Year is possible!
        if day >= 1 && day <= 29
            if day==29
                % A leap year is divisible by 4 (or 400, if it's a 
                % centurial year)
                if ((mod(year,4)==0 && mod(year,100)~=0)) || ...
                        mod(year,400)==0
                    month = 'February';
                else
                    invalid = true;
                end
            else
                month = 'February';
            end
        else
            invalid = true;
        end
    case 3
        if day >= 1 && day <= 31
            month = 'March';
        else
            invalid = true;
        end
    case 4
        if day >= 1 && day <= 30
            month = 'April';
        else
            invalid = true;
        end 
    case 5
        if day >= 1 && day <= 31
            month = 'May';
        else
            invalid = true;
        end
    case 6
        if day >= 1 && day <= 30
            month = 'June';
        else
            invalid = true;
        end
    case 7
        if day >= 1 && day <= 31
            month = 'July';
        else
            invalid = true;
        end
    case 8
        if day >= 1 && day <= 31
            month = 'August';
        else
            invalid = true;
        end
    case 9
        if day >= 1 && day <= 30
            month = 'September';
        else
            invalid = true;
        end
    case 10
        if day >= 1 && day <= 31
            month = 'October';
        else
            invalid = true;
        end
    case 11
        if day >= 1 && day <= 30
            month = 'November';
        else
            invalid = true;
        end
    case 12
        if day >= 1 && day <= 31
            month = 'December';
        else
            invalid = true;
        end
end

% Outputs variables in 'Month Day, Year' format if the variable 'invalid'
% is false.
if ~invalid
    the_date = sprintf('%s %d, %d', month, day, year);
else
    the_date = 'invalid date';
end

end



