% n = �� ���� �յ��� �Ÿ��� �������ִ� ���� ����
n = 3;
% An = n���� ���� ���� �� ���� �ٰ��� ����
An = A(n);
% Bn = n���� ������ ���� �������� �ϴ� �� �ܺ��� �ٰ��� ����
Bn = B(n);

Pn = (An + Bn) / 2;
% to = �������
to = abs(Pn - pi);

%tol = ���� ���� �Ӱ谪
tol = input('���� ���� �Ӱ谪 �Է� : ');

while(~(to < tol))
     n = n + 1;
    An = A(n);
    Bn = B(n);
    
    Pn = (An + Bn) / 2;
    to = abs(Pn - pi);
end

disp('���� ���� ���� n : ')
disp(n);
disp('�� ���� ���� ������ : ');
disp(to);

% n���� ���� ���� �� ���� �ٰ��� ����
function f = A(n)
f = n / 2 * sin(2 * pi / n);
end
% n���� ������ ���� �������� �ϴ� �� �ܺ��� �ٰ��� ����
function f = B(n)
f = n * tan(pi / n);
end