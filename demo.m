addpath('./ms_ssim/');
addpath('./BIQI_release/');
addpath('./Bliinds2_code/');
im = imread('./huo.jpg');
im2 = imnoise(im,'gaussian',0,0.1);
%im2 = imnoise(im,'salt & pepper',0.1);
%im2 = imnoise(im,'poisson');
imwrite(im2,'gaussian.jpg');
%imshow(im2)
%% no reference 
%[quality probs] = biqi(im);

features = bliinds2_feature_extraction(im2);
features_pre = reshape(features,[1,24]);
predicted_score = bliinds_prediction(features_pre);
disp(predicted_score);
%% reference

%mse psnr nlse
[psnr, mse, nlse] = psnr_mse(im, im2)
%fsim
[FSIM, FSIMc] = FeatureSIM(im, im2)
%ms_ssim

K = [0.01 0.03];
winsize = 11;
sigma = 1.5;
window = fspecial('gaussian', winsize, sigma);
level = 5;
weight = [0.0448 0.2856 0.3001 0.2363 0.1333];
method = 'product';

msssim = ssim_mscale_new(im, im2, K, window, level, weight, 'product')