clear;
close all;
img=imread('qwe.png');
p=rgb2gray(img);  % grayscale image 
u=fspecial('unsharp');
pu=filter2(u, p);
figure;
imshow(p);
figure;
imshow(uint8(pu));
