img1 = double(imread('huo.jpg'));
%img2 = imnoise(im,'gaussian',0,10);
img2 = imnoise(img1,'poisson');

K = [0.01 0.03];
winsize = 11;
sigma = 1.5;
window = fspecial('gaussian', winsize, sigma);
level = 5;
weight = [0.0448 0.2856 0.3001 0.2363 0.1333];
method = 'product';

msssim = ssim_mscale_new(img1, img2, K, window, level, weight, 'product')

