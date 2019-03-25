clear;
% n = �� ���� �յ��� �Ÿ��� �������ִ� ���� ����
n = 3;
% An = n���� ���� ���� �� ���� �ٰ��� ����
An = A(n);
% Bn = n���� ������ ���� �������� �ϴ� �� �ܺ��� �ٰ��� ����
Bn = B(n);

% Ad = An+1 - An�� ���밪
Ad = Adf(n);
% Bd = Bn+1 - Bn�� ���밪
Bd = Bdf(n);

Pn = (An + Bn) / 2;
% to = �������
to = abs(Pn - pi);

%tol = ���� ���� �Ӱ谪
tol = input('���� ���� �Ӱ谪 �Է� : ');

while(~(Ad < tol || Bd < tol))
    n = n + 1;
    Ad = Adf(n);
    Bd = Bdf(n);
    
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
% An+1 - An�� ���밪
function f = Adf(n)
f = abs(A(n + 1) - A(n));
end
% Bn+1 - Bn�� ���밪
function f = Bdf(n)
f = abs(B(n + 1) - B(n));
end