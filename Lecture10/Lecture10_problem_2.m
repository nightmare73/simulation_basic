clear;

n = 100;
x = rand(n,1);
y = rand(n,1);
plot(x, y, 'o')
for i = 1 : n
    P(i) = struct('x', x(i), 'y', y(i));
end

[Q1, Q2] = DiameterPoints(P);
hold on;
plot(Q1.x, Q1.y, 'sr');
hold on;
plot(Q2.x, Q2.y, 'sr');

% 가장 먼 거
function [Q1, Q2] = DiameterPoints(P)

maxDist = 0;

for i = 1 : length(P) - 1
    for j = i + 1 : length(P)
        p = P(i); q = P(j);
        distance = sqrt((p.x - q.x) ^ 2 + (p.y - q.y) ^ 2);

        if maxDist < distance
            maxDist = distance;
            Q1 = p; Q2 = q;
        end
    end
end
end

    