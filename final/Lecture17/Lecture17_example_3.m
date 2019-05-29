clear; 
close all;
img=imread('cameraman.tiff');
N=9;
x=fspecial('average', [9. 9]);
figure;
imshow(img);
title('원래 image');
figure;
z=filter2(x, img, 'same');   % 이 경우 conv2와 동일 
imshow(uint8(z));
title('평균 필터 적용후의 image');

clear;
close all;
img=imread('cameraman.tiff');
x=fspecial('average', [3, 3]);
subplot(2,1,1);
mesh( img(200:220,20:40));
title('원래 image');
subplot(2,1,2);
z=filter2(x, img, 'same');
mesh(uint8(z(200:220,20:40)));
title('평균 필터 적용 후의 image');

