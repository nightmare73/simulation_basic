clear;

% ���� ����
W = input('W�� �Է� : ');
% ���� ����
H = input('H�� �Է� : ');
% ���� ��ǥ
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