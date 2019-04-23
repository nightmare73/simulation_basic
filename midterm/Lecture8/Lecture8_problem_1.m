n = input('웹페이지 개수 : ');
A = RandomLinks(n);
spy(A)

function A = RandomLinks(n)
A = zeros(n, n);
for i = 1 : n
    for j = 1 : n
        r = rand;
        if i ~= j && r <= 1 / (1 + abs(i - j))
            A(i, j) = 1;
        end
    end
end
end
