function output = colorScreen(img1,img2,vector)
image1 = imread(img1);
image2 = imread(img2);
image1R = image1(:,:,1);
image1G = image1(:,:,2);
image1B = image1(:,:,3);
mask1 = image1R==vector(1);
mask2 = image1G==vector(2);
mask3 = image1B==vector(3);
mask = mask1 & mask2 & mask3 
mask = cat(3,mask,mask,mask);
output = image1;
output(mask) = image2(mask);