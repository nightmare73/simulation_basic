% 1.
s = sensor(:, 2: end);
t = sensor(:, 1);
mean(s)

% 가져오기할때 출력유형을 숫자형 행렬로 카테고리를 정해주어야함 ******
% a = [1; 2];
% b = [3; 4];
% c = [a b]
% 이런식으로 행렬 합치기 가능

% 2번 문제
%answer = [sensor, mean(sensor(:,2:end),2)]
% mean( aaa , 2) 이렇게 하면 행평균이 반환된대

% 교수 답
% avg_sensor = mean(s') % 각 시간에서 센서들의 평균온도 1 * 11
% sensor_2 = [sensor avg_sensor'] % 행렬 결합 : 열로 오른쪽에 붙임


% 3번 문제
% max(sensor(:,2 : end))

% 교수 답
%max(s)


% 4번 문제

% 교수 답
% [max_1, max_2] = max(s);
% t(max_2)

% 5번 문제
x = sensor(:, 1);
y1 = sensor(:, 2);
y2 = sensor(:, 3);
y3 = sensor(:, 4);

plot(x, y1, '-sr');
hold on; % 하나의 figure창에 여러개의 그래프를 동시에 plot 한다.
plot(x, y2, '-sg');
hold on
plot(x, y3, '-sb');

xlabel('시간')
ylabel('온도')
legend('센서 1','센서 2','센서 3')
% legend = 범례











