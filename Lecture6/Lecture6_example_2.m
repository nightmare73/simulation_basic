% 1��
student_5 = sihum(5,:)

% 2��
avg_student_5 = mean(student_5(:,2:end))
%avg_student_5 = mean(student_5(2:end))

% 3��
avg_sihum = mean(sihum(:,2:end))

% 4��
avg_student = mean(sihum(:,2:end)')

% [M,I] = max(___)�� ���� ���ŵ� ���� �� �ϳ��� �Է� �μ����� A�� �ִ��� �ε����� ã�� ���� ��� ���� I�� ��ȯ�մϴ�.
% �ִ��� �� �� �̻� �ִ� ��� max�� ù ��° �ִ񰪿� �ش��ϴ� �ε����� ��ȯ�մϴ�.
% 5��
[max_sihum, max_ID] = max(sihum(:,2:end))

% 6��
[min_sihum, min_ID] = min(sihum(:,2:end))