% problem 1: 5�� ��ü ����
student_5=sihum(5,:)
% problem 2: student_5 �������� 2��° ���� ������ ����
avg_student_5=mean(student_5(2:end))
% problem 3
% sihum_jumsu: 2��, 3��, 4���� �����Ͽ� �����ϳ� ����
sihum_jumsu=sihum(:, 2:end);
% �� ���� ��� = �� ���� ������ ��� ����
avg_sihum=mean(sihum_jumsu)
% problem 4
avg_student=mean(sihum_jumsu')
% problem 5: �ִ밪 return�� 2���� return [�ִ밪, �ִ밪�� �ִ� ��ġ] 
[max_sihum, max_ID]=max(sihum_jumsu)
% problem 6: �ּҰ� return�� 2���� return [�ּҰ�, �ּҰ��� �ִ� ��ġ] 
[min_sihum, min_ID]=mim(sihum_jumsu)