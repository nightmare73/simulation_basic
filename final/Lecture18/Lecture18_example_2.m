% clear;
% close all;
% img=imread('cameraman.tiff');
% N=3;
% sigma=0.8493;
% x=fspecial('gaussian', [N N], sigma)     % 3x3 Gaussian 필터 (mask)
% subplot(2,1,1);
% mesh( img(200:220,20:40));
% title('원래 image');
% subplot(2,1,2);
% z=filter2(x, img, 'same');
% mesh(uint8(z(200:220,20:40)));
% title('평균 필터 적용 후의 image');

clear;
close all;
img=imread('cameraman.tiff');
N=3;
sigma=5;
x=fspecial('gaussian', [N N], sigma)   % 3x3 Gaussian 필터 
figure;
imshow(img);
title('원래 image');
figure;
z=filter2(x, img);
imshow(uint8(z));
title('filtering 후의 image');
