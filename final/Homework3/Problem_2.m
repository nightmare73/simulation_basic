clear;

% 가로 길이
W = input('W값 입력 : ');
% 세로 길이
H = input('H값 입력 : ');
% 기준 좌표
a = 0;
b = 0;

while W > H
    DrawRect(a, b, W, H, 'y')
    hold on;
    
    tmpW = W;
    W = W * 2/3;
    
    a = a + (tmpW - W) / 2;
    b = b + H;
end

function DrawRect(a, b, L, W, c)
x = [a  a + L   a + L   a    ];
y = [b  b       b + W   b + W];

fill(x, y, c)
end