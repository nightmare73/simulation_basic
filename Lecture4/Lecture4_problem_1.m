N = 1000;
H = 0;
for i = 1 : N
    if randi([0,1]) == 0 %������ ���⸦ if rand < .5 �̷��� ������ ȣȫ��
      H = H + 1;
    end
end

disp(H);
disp(H/N);