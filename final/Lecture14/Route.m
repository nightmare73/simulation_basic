function [S, Odom] =Route(start, D)
% D: n행 n열 행렬, (i,j)가 i번째 도시에서 j번째 도시로의 거리
% start: 출발하는 도시 1<= start <=n
% S(k): index of the kth stop (크기: n+1)
% Odom(k): k번째 도시에서의 외판원의 누적 거리 (크기: n+1)
[n, n]=size(D);
S=zeros(n+1,1);  % (크기: n+1)
Odom=zeros(n+1,1); % (크기: n+1)
Here=start;
S(1)=Here;
dstart=D(start,:); % 시작한 도시로의 거리 저장
for j=1:n-1
    D(:, Here)=inf;
    [Leg, Next]=min(D(Here, :));
    Odom(j+1)=Odom(j)+Leg;
    S(j+1)=Next;
    Here=Next;
end
S(n+1)=start;   % TSP 문제이므로 처음 시작 도시로 돌아옴 
Odom(n+1)=Odom(n)+dstart(Here);  % 마지막 도시에서 처음 시작까지의 거리 더함 
