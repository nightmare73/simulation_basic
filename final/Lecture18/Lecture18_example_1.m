% 직접 작성한 3x3 Gaussian 필터
a=1; % 3X3 mask
x=[-a:a];
y=[-a:a];
% 표준편차
sigma=0.8493;
[X, Y]=meshgrid(x,y);
% 2D Gaussian 함수
f_init=1/(2*pi*sigma^2)*exp(-1.*(X.^2+Y.^2)/(2*sigma^2));
% 필터 요소의 모든 합이 1이되도록 정규화
f_final=f_init./sum(sum(f_init))
