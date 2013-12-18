function [array] = multiTable(num)

% if the number is less than or equal to 0, then there is not
% multiplication table
if num<=0
    array =[0]
else

    % go through each value and multiply it by it's location, this will give
    % you the values for a table as large as you wish.
    for x = 1:num
        for y = 1:num
            array(x, y) = x*y;
        end
    end

    % Then a row is creating the title or (unmultiplyed number) across the top,
    % then along the left side.
    row1 = [1:num];
    col1 = row1';
    array = [col1 array];
    row1 = [0:num];
    array = [row1 ; array];

end