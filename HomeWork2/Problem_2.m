
row = randi([2, 5], 1, 1);
col = randi([2, 5], 1, 1);

M = randi([3, 10], row, col)
A = myCumsum(M)


function A = myCumsum(M)

% 입력받은 배열의 행, 열의 갯수 가져오기 
[row, col] = size(M);

% 입력받은 배열과 같은 차원이고 0으로 가득찬 배열 생성
A = M;
A = A * 0;

% 입력받은 열의 수와 같은 0으로된 1행짜리 행벡터 생성
zeroRow = 1 : col;
zeroRow = zeroRow * 0;

% 입력받은 배열을 계속 변형시켜 계를 누적
 for k = 1 : row
    A = A + M;
    M = [zeroRow; M(1 : row - 1, :)];
 end

end
