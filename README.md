# image_quality_assessment
打包了 一些图像质量评价的算法，很多都是基础的。
对于无参考图像质量评价方法NIEQ，BIQI，BLIINDS-II来说，输出是DMOS，范围0-100，数值越小，代表图像质量越好。
对于全参考图像质量评价方法MSE,NLSE来说，输出的是待评价的图像和标准图像相比的误差，NSE,NLSE数值越小，代表图像质量越好。PSNR数值越大，代表图像质量越好。MSSIM,FSIM数值在0-1之间，数值越大，代表图像质量越好。


运行 
```
demo.m
```
