% ���� �ۼ��� 3x3 Gaussian ����
a=1; % 3X3 mask
x=[-a:a];
y=[-a:a];
% ǥ������
sigma=0.8493;
[X, Y]=meshgrid(x,y);
% 2D Gaussian �Լ�
f_init=1/(2*pi*sigma^2)*exp(-1.*(X.^2+Y.^2)/(2*sigma^2));
% ���� ����� ��� ���� 1�̵ǵ��� ����ȭ
f_final=f_init./sum(sum(f_init))
