function [loc price powers]= findActionFigure(vending, item)

name = {vending.Name};
powers = {vending.Powers};
price = {vending.Price};

%   If the item isn't in the vending machine at all, output this.
if ~any(strcmp(name, item))
    loc = 'Item not found';
    price = 0;
    powers = 'Item not found';
    return
end

% Find the size of the vending machine
[row col] = size(vending)
   
    % Go through each row and column of the vending machine, checking for
    % the item, then displaying the location, price, powers.
    for x = 1:row
        for y = 1:col
        
            if strcmp(vending(x,y).Name, item)
                
                row = char(64+x);
                col = y;
                
                loc = sprintf('%s%d',row,col);
                powers = powers(x);
                price = price{x};
        
            end
        end
    end