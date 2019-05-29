clear; 
close all;
img=imread('cameraman.tiff');
N=9;
x=fspecial('average', [9. 9]);
figure;
imshow(img);
title('���� image');
figure;
z=filter2(x, img, 'same');   % �� ��� conv2�� ���� 
imshow(uint8(z));
title('��� ���� �������� image');

clear;
close all;
img=imread('cameraman.tiff');
x=fspecial('average', [3, 3]);
subplot(2,1,1);
mesh( img(200:220,20:40));
title('���� image');
subplot(2,1,2);
z=filter2(x, img, 'same');
mesh(uint8(z(200:220,20:40)));
title('��� ���� ���� ���� image');

