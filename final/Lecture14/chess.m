clear;
close all;
red=[1 0 0];
black=[0 0 0];
n=7;
hold on;
for i=0:n
    for j=0:n
        x=[0 1 1 0]+i;
        y=[0 0 1 1]+j;
        if rem(i+j, 2)==0
            v=red;
        else
            v=black;
        end
        fill(x, y, v);
    end
end