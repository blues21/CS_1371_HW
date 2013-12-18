function output = checkImage(picture1, picture2)

% Read the images
pic1 = imread(picture1);
pic2 = imread(picture2);

% Take the size of these 2 images
[row1 col1 z1] = size(pic1);
[row2 col2 z2] = size(pic2);

% If they are the same size (dimesnion)
if row1 ~= row2 || col1 ~= col2
    
        output = 'The images have different dimensions.';
        
else
    % Otherwise
        
    % Write a new image that is white everyhwere where
    % They are the same, and black where they are different
    red = pic1(:,:,1)==pic2(:,:,1);
    green = pic1(:,:,2)==pic2(:,:,2);
    blue = pic1(:,:,3)==pic2(:,:,3);
    
    mask = red & green & blue;
  
    if ~any(~any(red)) ||  ~any(~any(green)) ||  ~any(~any(blue))

        newRed = pic1(:,:,1);
        newGreen = pic1(:,:,2);
        newBlue = pic1(:,:,3);
        newRed(~mask) = 0;
        newGreen(~mask) = 0;
        newBlue(~mask) = 0;
        newRed(mask) = 255;
        newGreen(mask) = 255;
        newBlue(mask) = 255;
        finalImage(:,:,1) = newRed;
        finalImage(:,:,2) = newGreen;
        finalImage(:,:,3) = newBlue;

        [name1 ext] = strtok(picture1, '.');
        [name2 ext] = strtok(picture2, '.');
        name = [name1 'VS' name2 '.png'];
        imwrite(finalImage,name,'png');

        output = 'The RGB values are different.';
    
    else
 
        output = 'The images are the same.';
    
    end


    
end
