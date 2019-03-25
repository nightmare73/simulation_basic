N = 1000;
H = 0;
for i = 1 : N
    if randi([0,1]) == 0 %교수는 여기를 if rand < .5 이렇게 적엇음 호홍이
      H = H + 1;
    end
end

disp(H);
disp(H/N);