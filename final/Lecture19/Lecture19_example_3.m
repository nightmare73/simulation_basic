img=imread('qwe.png');
a=rgb2gray(img);
imshow(a);
roi=roipoly(a, [60 110 110 60], [30 30 90 90]);  % ROI 정의 
h=fspecial('average', [15 15]);  % 평균 필터 15 by 15
f=roifilt2(h, a, roi);  % ROI에 평균 필터 적용 
figure;
imshow(f);

