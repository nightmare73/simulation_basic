% Lecture2_problem_1
% Lecture3_example_2

a = 1;
b = 2;
c = 3;
fid = fopen('test_1.txt','w');
fprintf(fid, '%d %d %d', a,b,c);
fclose(fid);