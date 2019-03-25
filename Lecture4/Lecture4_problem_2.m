N = 0;
H = 0;
T = 0;

while abs(H - T) ~= 10
   if rand < .5 
       H = H + 1;
   else
       T = T + 1;
   end
    N = N + 1;
end

disp(N)
disp(H)
disp(T)