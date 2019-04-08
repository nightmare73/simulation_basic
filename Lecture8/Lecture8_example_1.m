% x = 1: 5
% y = linspace(1,3,5)
% 
% [a, b] = meshgrid(x, y);
% 
% disp(a);
% disp(b);
% 
% a.*b

width = 1:2:5;
height = 2:2:8;

[x, y] = meshgrid(width, height)

x.*y