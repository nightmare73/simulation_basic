x=[0 3 1];
y=[0 0 2];
for L=0:4  %각 level 별로
    figure;  % figure 창 연다
    hold on
    MeshTriangle(x, y, L)
end
