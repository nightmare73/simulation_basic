mask = ones(3,3)/9;
img = [1 2 3; 4 5 6; 7 8 9];

conv2(mask, img, 'same')
filter2(mask, img, 'same')