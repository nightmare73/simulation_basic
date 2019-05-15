function [S, Odom] =Route(start, D)
% D: n�� n�� ���, (i,j)�� i��° ���ÿ��� j��° ���÷��� �Ÿ�
% start: ����ϴ� ���� 1<= start <=n
% S(k): index of the kth stop (ũ��: n+1)
% Odom(k): k��° ���ÿ����� ���ǿ��� ���� �Ÿ� (ũ��: n+1)
[n, n]=size(D);
S=zeros(n+1,1);  % (ũ��: n+1)
Odom=zeros(n+1,1); % (ũ��: n+1)
Here=start;
S(1)=Here;
dstart=D(start,:); % ������ ���÷��� �Ÿ� ����
for j=1:n-1
    D(:, Here)=inf;
    [Leg, Next]=min(D(Here, :));
    Odom(j+1)=Odom(j)+Leg;
    S(j+1)=Next;
    Here=Next;
end
S(n+1)=start;   % TSP �����̹Ƿ� ó�� ���� ���÷� ���ƿ� 
Odom(n+1)=Odom(n)+dstart(Here);  % ������ ���ÿ��� ó�� ���۱����� �Ÿ� ���� 
