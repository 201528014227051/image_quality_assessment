im = rgb2gray(imread('./huo.jpg'));
im2 = imnoise(im,'gaussian',0,0.1);
 [quality probs] = biqi(im2);
 disp(quality);