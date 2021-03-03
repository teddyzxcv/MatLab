%% 1
a = [2; 3; 4];
b = [3; 5; 2];
c = [1; 1; 1];
a + b == b + a
isequal(a + b, b + a)
(a + b) + c == a +(b + c)
isequal((a + b) + c, a + (b + c))
%% 2
alp = 4;
bet = 3;
a = [4; 2; 3];
b = [1; 5; 2];
isequal(alp * (a + b), alp * a + alp * b)
isequal((alp + bet) * a, alp * a + bet * a)
isequal(alp * (bet * a), (alp * bet) * a)
%% 3.1
a = [3; 4; 5];
nr = sqrt(a(1)^2 + a(2)^2 + a(3)^2)
nr = norm(a)
a0 = [(a(1) / nr); (a(2) / nr); (a(3) / nr)]
isequal(norm(a0), 1)
%% 3.2
a = [4; 2];
nr = sqrt(a(1)^2 + a(2)^2)
nr = norm(a)
a0 = [(a(1) / nr); (a(2) / nr)]
isequal(norm(a0), 1)
%% 4
a = [3; 4; 5];
nr = norm(a);
a1ang = acos(a(1) / nr)
a2ang = acos(a(2) / nr)
a3ang = acos(a(3) / nr)
a1 = a(1) / nr
a2 = a(2) / nr
a3 = a(3) / nr
isequal(a1^2 + a2^2 + a3^2, 1)
%% 4.2
a = [4, 2];
nr = norm(a);
a1ang = acos(a(1) / nr)
a2ang = acos(a(2) / nr)
a1 = a(1) / nr
a2 = a(2) / nr
a1^2 + a2^2
isequal(a1^2 + a2^2, 1)
%% 5
a = [1; -2; 0];
b = [0; 1; 1];
c = [1; 2; 2];
plot3([0, a(1)], [0, a(2)], [0, a(3)])
hold on
plot3([0, b(1)], [0, b(2)], [0, b(3)])
plot3([0, c(1)], [0, c(2)], [0, c(3)])
aort = [a(1) / norm(a); a(2) / norm(a); a(3) / norm(a)]
bort = [b(1) / norm(b); b(2) / norm(b); b(3) / norm(b)]
cort = [c(1) / norm(c); c(2) / norm(c); c(3) / norm(c)]
plot3 ([0, aort(1)], [0, aort(2)], [0, aort(3)], 'black', 'LineWidth', 4)
plot3 ([0, bort(1)], [0, bort(2)], [0, bort(3)], 'black', 'LineWidth', 4)
plot3 ([0, cort(1)], [0, cort(2)], [0, cort(3)], 'black', 'LineWidth', 4)
grid on
hold off
