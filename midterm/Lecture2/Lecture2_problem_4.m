b = input('Enter b : ');
c = input('Enter c : ');
L = input('Enter L : ');
R = input('Enter R : ');

xc = -b/2;

if( R <= xc )
    disp('q(R) is smallist\n')
    disp('�ּҰ���')
    disp(q(R,b,c))
    disp('�׶��� x����')
    disp(R)
elseif( xc <= L)
    disp('q(L) is smallist\n')
    disp('�ּҰ���')
    disp(q(L,b,c))
    disp('�׶��� x����')
    disp(L)
else
    disp('q(xc) is smallist\n')
    disp('�ּҰ���')
    disp(q(xc,b,c))
    disp('�׶��� x����')
    disp(xc)
end
%�� if else ������ �ּҰ��̶� �� ���� x���� ��� ������ �����ϰ�
%����� ������ if�� ���ͼ� �ϴ°� ����.. ��;; ������ �ڵ��Ƿ��� ���ڸ��� �̸��̾�
function f = q(x,b,c)
f = x*x + b*x + c;
end