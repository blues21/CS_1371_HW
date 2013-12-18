function [output] = leapYear(year)

if(mod(year, 4) == 0)
    status = true;
    if(mod(year, 100) == 0)
        status=false;
        if(mod(year,400)==0)
            status = true;
        end
    end
else
    status=false;
end

if(status == 0)
    output = 'It is not a leap year.';
elseif(status == 1)
    output = 'It is a leap year.';
end