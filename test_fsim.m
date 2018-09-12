im = imread('./huo.jpg');
im2 = imnoise(im,'gaussian',0,0.1);
%imshow(im2)
 [FSIM, FSIMc] = FeatureSIM(im2, im2)