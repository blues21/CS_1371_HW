function ret = imageInterp(img, newR, newC)

[r c l] = size(img); % Find the size of the image
% Convert the image to double so can be used in interpolation
img = double(img); 
% Generate the scaling indices needed to resize the image. Do not use
% round().
newRV = linspace(1,r,newR);
newCV = linspace(1,c,newC);

% Take out each of the layers and store them in variable names
red = img(:,:,1);
green = img(:,:,2);
blue = img(:,:,3);

% Initialize empty arrays to contain an image where only the columns have
% been scaled. Aka, the dimensions should be the same number of rows, but
% the columns should now be the new number of columns
red2 = zeros(r, newC);
green2 = zeros(r, newC);
blue2 = zeros(r, newC);

% Loop through the rows and use interpolation to scale through 
for i = 1:r
    red2(i, :) = interp1(1:c, red(i, :), newCV);
    green2(i, :) = interp1(1:c, green(i, :), newCV);
    blue2(i, :) = interp1(1:c, blue(i, :), newCV);
end

% Generate zeros arrays for the final layers. Should have the final
% dimensions.
red3 = zeros(newR, newC);
green3 = zeros(newR, newC);
blue3 = zeros(newR, newC);

% Loop through the columns and scale each column
for i = 1:newC
    red3(:, i) = interp1(1:r, red2(:,i), newRV);
    green3(:, i) = interp1(1:r, green2(:,i), newRV);
    blue3(:, i) = interp1(1:r, blue2(:,i), newRV);
end
% Put the layers back into the image
ret(:, :, 1) = red3;
ret(:, :, 2) = green3;
ret(:, :, 3) = blue3;
ret = uint8(ret); % Cast the image back to uint8

end