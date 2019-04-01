% problem 1: 5행 전체 참조
student_5=sihum(5,:)
% problem 2: student_5 변수에서 2번째 부터 끝까지 참조
avg_student_5=mean(student_5(2:end))
% problem 3
% sihum_jumsu: 2열, 3열, 4열만 참조하여 변수하나 만듬
sihum_jumsu=sihum(:, 2:end);
% 각 열의 평균 = 각 시험 점수의 평균 점수
avg_sihum=mean(sihum_jumsu)
% problem 4
avg_student=mean(sihum_jumsu')
% problem 5: 최대값 return시 2개를 return [최대값, 최대값이 있는 위치] 
[max_sihum, max_ID]=max(sihum_jumsu)
% problem 6: 최소값 return시 2개를 return [최소값, 최소값이 있는 위치] 
[min_sihum, min_ID]=mim(sihum_jumsu)