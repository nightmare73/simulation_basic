% img=imread('cameraman.tiff');
% figure;
% imshow(img)
% figure;
% mesh(img)
% zlabel('��ϰ�')


% image�� �Ϻκи� mesh �Լ��� ��ϰ� ��ȭ ǥ�� 
img=imread('cameraman.tiff');
img_1=img(120:140,120:140);
figure;
 imshow(img_1)
 figure;
mesh(img_1)
