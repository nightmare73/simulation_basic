% clear;
% tw=imread('twins.png');
% t=rgb2gray(tw);
% % ������ �� %�� salt & pepper ������ ���� ���ΰ�?
% t_sp=imnoise(t, 'salt & pepper', 0.01);
% imshow(t_sp);

clear;
tw=imread('twins.png');
t=rgb2gray(tw);
t_sp=imnoise(t, 'salt & pepper',  0.01);
imshow(t_sp);
t_sp_1=medfilt2(t_sp);
figure;
imshow(t_sp_1);


