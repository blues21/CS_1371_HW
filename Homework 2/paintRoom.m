function [bigCan littleCan] = paintRoom(x, y, z, windowArea, coatsOfPaint)

    % Using the surface area formula, we calculate the area of everything
    % but the floor
    wallSpace = x.*y + 2.*y.*z + 2.*x.*z;
    
    % Here we subtract the area of the windows in the room
    areaWindowless = wallSpace - windowArea;
    
    % Here is where the area is multiplyed depending on how many coats of
    % paint need to be added
    areaCoats = areaWindowless .* coatsOfPaint;
    
    % The number of full big cans that can be used is calculated
    bigCan = floor(areaCoats ./ 1750);
    
    % This is the area left after number of full bigCans are used
    areaLeft = areaCoats - (bigCan .* 1750);
    
    % The number of minimal small cans needed in order to cover the entire
    % room. (This will most likely include leftovers)
    littleCan = ceil(areaLeft ./ 350);

