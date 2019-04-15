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

function [Q1, Q2] = DiameterPoints(P)

minDist = 99999999;

for i = 1 : length(P) - 1
    for j = i + 1 : length(P)
        p = P(i); q = P(j);
        distance = sqrt((p.x - q.x) ^ 2 + (p.y - q.y) ^ 2);

        if minDist > distance
            minDist = distance;
            Q1 = p; Q2 = q;
        end
    end
end
end

    