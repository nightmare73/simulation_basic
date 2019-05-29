img=imread('cameraman.tiff');
x=[-1 -1 -1;-1 9 -1;-1 -1 -1]
subplot(2,1,1);
imshow(img) 
title('원래 image');
subplot(2,1,2);
z=filter2(x, img, 'same');   % conv2와 동일 
imshow(uint8(z))
title('filtering 후의 image');


img=imread('cameraman.tiff');
x=[0 -1 0;-1 5 -1;0 -1 0]
subplot(2,1,1);
imshow(img) 
title('원래 image');
subplot(2,1,2);
z=filter2(x, img, 'same');  % conv2와 동일
imshow(uint8(z))
title('filtering 후의 image');
