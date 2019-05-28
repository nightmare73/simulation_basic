clear;
close all;
a = 0;
b = 0;
base = 1.6180;
height = 1;
for L = 1 : 5
    figure;
    hold on;
    PartitionRect(a, b, base, height, L);
end

function PartitionRect(a, b, base, height, L)
% 기본 단계
if L == 1
    % 가로형 직사각형인 경우
    if base > height
        DrawRect(a, b, height, height, RandomColor());
        DrawRect(a + height, b, base - height, height, 'w');
    % 세로형 직사각형인 경우
    else
        DrawRect(a, b, base, base, RandomColor());
        DrawRect(a,b + base, base, height - base, 'w');
    end
% 재귀 단계
else
    % 가로형 직사각형인 경우
    if base > height
        DrawRect(a, b, height, height, RandomColor());
        PartitionRect(a + height, b, base - height, height, L - 1);
    % 세로형 직사각형인 경우
    else
        DrawRect(a, b, base, base, RandomColor());
        PartitionRect(a, b + base, base, height - base, L - 1);
    end    
end
end

function c = RandomColor()
if rand < 1/4
    c = 'r';
elseif rand < 2/4
    c = 'g';
elseif rand < 3/4
    c = 'b';
else
    c = 'y';
end
end

function DrawRect(a, b, L, W, c)
x = [a  a + L   a + L   a    ];
y = [b  b       b + W   b + W];

fill(x, y, c)
end