% img=imread('cameraman.tiff');
% figure;
% imshow(img)
% figure;
% mesh(img)
% zlabel('명암값')


% image의 일부분만 mesh 함수로 명암값 변화 표시 
img=imread('cameraman.tiff');
img_1=img(120:140,120:140);
figure;
 imshow(img_1)
 figure;
mesh(img_1)
