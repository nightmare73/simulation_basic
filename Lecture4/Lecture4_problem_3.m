% rem(n,2) n�� 2�� ������������ ������


n = randi([1,1000000]);
cnt = 0;

while(n ~= 1)
    if(rem(n, 2) == 0)
        n = n / 2;
    else
        n = n * 3 + 1;
    end
    cnt = cnt + 1;
end

disp(n)
disp(cnt)