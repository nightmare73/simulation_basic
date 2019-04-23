% 1번
student_5 = sihum(5,:)

% 2번
avg_student_5 = mean(student_5(:,2:end))
%avg_student_5 = mean(student_5(2:end))

% 3번
avg_sihum = mean(sihum(:,2:end))

% 4번
avg_student = mean(sihum(:,2:end)')

% [M,I] = max(___)는 위에 열거된 구문 중 하나의 입력 인수에서 A의 최댓값의 인덱스를 찾은 다음 출력 벡터 I로 반환합니다.
% 최댓값이 두 개 이상 있는 경우 max는 첫 번째 최댓값에 해당하는 인덱스를 반환합니다.
% 5번
[max_sihum, max_ID] = max(sihum(:,2:end))

% 6번
[min_sihum, min_ID] = min(sihum(:,2:end))