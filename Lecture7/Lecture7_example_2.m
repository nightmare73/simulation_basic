% 1.
s = sensor(:, 2: end);
t = sensor(:, 1);
mean(s)

% ���������Ҷ� ��������� ������ ��ķ� ī�װ��� �����־���� ******
% a = [1; 2];
% b = [3; 4];
% c = [a b]
% �̷������� ��� ��ġ�� ����

% 2�� ����
%answer = [sensor, mean(sensor(:,2:end),2)]
% mean( aaa , 2) �̷��� �ϸ� ������� ��ȯ�ȴ�

% ���� ��
% avg_sensor = mean(s') % �� �ð����� �������� ��տµ� 1 * 11
% sensor_2 = [sensor avg_sensor'] % ��� ���� : ���� �����ʿ� ����


% 3�� ����
% max(sensor(:,2 : end))

% ���� ��
%max(s)


% 4�� ����

% ���� ��
% [max_1, max_2] = max(s);
% t(max_2)

% 5�� ����
x = sensor(:, 1);
y1 = sensor(:, 2);
y2 = sensor(:, 3);
y3 = sensor(:, 4);

plot(x, y1, '-sr');
hold on; % �ϳ��� figureâ�� �������� �׷����� ���ÿ� plot �Ѵ�.
plot(x, y2, '-sg');
hold on
plot(x, y3, '-sb');

xlabel('�ð�')
ylabel('�µ�')
legend('���� 1','���� 2','���� 3')
% legend = ����











