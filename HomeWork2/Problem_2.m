
row = randi([2, 5], 1, 1);
col = randi([2, 5], 1, 1);

M = randi([3, 10], row, col)
A = myCumsum(M)


function A = myCumsum(M)

% �Է¹��� �迭�� ��, ���� ���� �������� 
[row, col] = size(M);

% �Է¹��� �迭�� ���� �����̰� 0���� ������ �迭 ����
A = M;
A = A * 0;

% �Է¹��� ���� ���� ���� 0���ε� 1��¥�� �຤�� ����
zeroRow = 1 : col;
zeroRow = zeroRow * 0;

% �Է¹��� �迭�� ��� �������� �踦 ����
 for k = 1 : row
    A = A + M;
    M = [zeroRow; M(1 : row - 1, :)];
 end

end
