im = imread('./huo.jpg');
im2 = imnoise(im,'gaussian',0,10);
%imshow(im2)
[psnr, mse, nlse] = psnr_mse(im, im2)