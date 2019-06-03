img=imread('qwe.png');
a=rgb2gray(img);
imshow(a);
roi=roipoly(a, [60 110 110 60], [30 30 90 90]);  % ROI ���� 
h=fspecial('average', [15 15]);  % ��� ���� 15 by 15
f=roifilt2(h, a, roi);  % ROI�� ��� ���� ���� 
figure;
imshow(f);

