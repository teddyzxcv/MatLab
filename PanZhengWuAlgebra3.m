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
plot3 ([0, 1], [0, 0], [0, 0], 'black', 'LineWidth', 4)
plot3 ([0, 0], [0, 1], [0, 0], 'black', 'LineWidth', 4)
plot3 ([0, 0], [0, 0], [0, 1], 'black', 'LineWidth', 4)
plot3 ([0, aort(1)], [0, aort(2)], [0, aort(3)], 'black', 'LineWidth', 4)
plot3 ([0, bort(1)], [0, bort(2)], [0, bort(3)], 'black', 'LineWidth', 4)
plot3 ([0, cort(1)], [0, cort(2)], [0, cort(3)], 'black', 'LineWidth', 4)
grid on
hold off
%% 6
p = [2 -3];
q = [1 2];
s = [9 4];
isequal(p(1) / q(1), p(2) / q(2))
delta0 = det(horzcat(p', q'))
delta1 = det(horzcat(s', q'))
delta2 = det(horzcat(p', s'))
m = delta1 / delta0;
n = delta2 / delta0;
mp = m * p;
nq = n * q;
quiver(0, 0, mp(1), mp(2), 1, 'Color', 'm', 'lineWidth', 2)
hold on
quiver(0, 0, nq(1), nq(2), 1, 'Color', 'c', 'lineWidth', 2)
quiver(0, 0, p(1), p(2), 1, 'Color', 'r', 'lineWidth', 3)
quiver(0, 0, q(1), q(2), 1, 'Color', 'g', 'lineWidth', 3)
quiver(0, 0, s(1), s(2), 1, 'Color', 'b', 'lineWidth', 2)
quiver(0, 0, 0, 10, 1, 'Color', 'black', 'lineWidth', 2)
quiver(0, 0, 10, 0, 1, 'Color', 'black', 'lineWidth', 2)
hold off
%% 7
a = [3 2];
b = [-2 1];
c = [4 -4];
d1 = det(horzcat(a', b'));
d2 = det(horzcat(c', b'));
d3 = det(horzcat(a', c'));
dc = [d2 / d1, d3 / d1];
d1 = det(horzcat(a', c'));
d2 = det(horzcat(b', c'));
d3 = det(horzcat(a', b'));
db = [d2 / d1, d3 / d1];
d1 = det(horzcat(b', c'));
d2 = det(horzcat(a', c'));
d3 = det(horzcat(b', a'));
da = [d2 / d1, d3 / d1];
subplot(2, 2, 1);
quiver(0, 0, 0, 2, 1, 'Color', 'black', 'LineWidth', 2)
text(2.5, 0, 'X');
hold on
quiver(0, 0, 2, 0, 1, 'Color', 'black', 'LineWidth', 2)
text(0, 2.5, 'Y');
quiver(0, 0, a(1), a(2), 'blue')
quiver(0, 0, b(1), b(2), 'blue')
quiver(0, 0, c(1), c(2), 'blue')
hold off
subplot(2, 2, 2)
quiver(0, 0, 0, 2, 1, 'Color', 'black', 'LineWidth', 2)
text(2.5, 0, 'X');
hold on
quiver(0, 0, 2, 0, 1, 'Color', 'black', 'LineWidth', 2)
text(0, 2.5, 'Y');
quiver(0, 0, a(1), a(2), 'red')
quiver(0, 0, b(1), b(2), 'blue')
quiver(0, 0, c(1), c(2), 'blue')
quiver(0, 0, da(1) * b(1), da(1) * b(2), 'blue')
quiver(0, 0, da(2) * c(1), da(2) * c(2), 'blue')
hold off
subplot(2, 2, 3)
quiver(0, 0, 0, 2, 1, 'Color', 'black', 'LineWidth', 2)
text(2.5, 0, 'X');
hold on
quiver(0, 0, 2, 0, 1, 'Color', 'black', 'LineWidth', 2)
text(0, 2.5, 'Y');
quiver(0, 0, a(1), a(2), 'blue')
quiver(0, 0, b(1), b(2), 'red')
quiver(0, 0, c(1), c(2), 'blue')
quiver(0, 0, db(1) * a(1), db(1) * a(2), 'blue')
quiver(0, 0, db(2) * c(1), db(2) * c(2), 'blue')
hold off
subplot(2, 2, 4)
quiver(0, 0, 0, 2, 1, 'Color', 'black', 'LineWidth', 2)
text(2.5, 0, 'X');
hold on
quiver(0, 0, 2, 0, 1, 'Color', 'black', 'LineWidth', 2)
text(0, 2.5, 'Y');
quiver(0, 0, a(1), a(2), 'blue')
quiver(0, 0, b(1), b(2), 'blue')
quiver(0, 0, c(1), c(2), 'red')
quiver(0, 0, dc(1) * a(1), dc(1) * a(2), 'blue')
quiver(0, 0, dc(2) * b(1), dc(2) * b(2), 'blue')
hold off
%% 8
a = [2, 1, 0];
b = [1, -1, 2];
c = [2, 2, -1];
d = [3, 7, -7];
d1 = det(horzcat(a', b', c'));
d2 = det(horzcat(d', b', c'));
d3 = det(horzcat(a', d', c'));
d4 = det(horzcat(a', b', d'));
dc = [d2 / d1, d3 / d1, d4 / d1];
subplot(1, 2, 1)
quiver3(0, 0, 0, 2, 0, 0, 1, 'Color', 'black', 'LineWidth', 2)
text(2.5, 0, 0, 'X');
hold on
quiver3(0, 0, 0, 0, 2, 0, 1, 'Color', 'black', 'LineWidth', 2)
text(0, 2.5, 0, 'Y');
quiver3(0, 0, 0, 0, 0, 2, 1, 'Color', 'black', 'LineWidth', 2)
text(0, 0, 2.5, 'Z');
quiver3(0, 0, 0, a(1), a(2), a(3), 'b')
quiver3(0, 0, 0, b(1), b(2), b(3), 'b')
quiver3(0, 0, 0, c(1), c(2), c(3), 'b')
quiver3(0, 0, 0, d(1), d(2), d(3), 'b')
hold off
subplot(1, 2, 2)
quiver3(0, 0, 0, 2, 0, 0, 1, 'Color', 'black', 'LineWidth', 2)
text(2.5, 0, 0, 'X');
hold on
quiver3(0, 0, 0, 0, 2, 0, 1, 'Color', 'black', 'LineWidth', 2)
text(0, 2.5, 0, 'Y');
quiver3(0, 0, 0, 0, 0, 2, 1, 'Color', 'black', 'LineWidth', 2)
text(0, 0, 2.5, 'Z');
quiver3(0, 0, 0, a(1), a(2), a(3), 'r')
quiver3(0, 0, 0, b(1), b(2), b(3), 'b')
quiver3(0, 0, 0, dc(1) * b(1), dc(1) * b(2), dc(1) * b(3), 'b')
quiver3(0, 0, 0, c(1), c(2), c(3), 'b')
quiver3(0, 0, 0, dc(2) * c(1), dc(2) * c(2), dc(2) * c(3), 'b')
quiver3(0, 0, 0, d(1), d(2), d(3), 'b')
quiver3(0, 0, 0, dc(3) * d(1), dc(3) * d(2), dc(3) * d(3), 'b')
hold off
%% 9
a = [1, -2, 0];
b = [0, 1, 1];
c = [1, 2, 2];
alp = 2;
isequal(dot(a, b), dot(b, a))
isequal(dot(a + b, c), dot(a, c) + dot(b, c))
isequal(dot(a, b + c), dot(a, b) + dot(a, c))
isequal(dot(alp * a, b), alp * dot(a, b))
isequal(dot(a, alp * b), alp * dot(a, b))
dot(a, a) > 0
a = [0, 0, 0];
dot(a, a) == 0
%% 10
a = [1, -2, 0];
b = [0, 1, 1];
c = [1, 2, 2];
isequal(dot(a, b) * c, a * dot(b, c))

if (dot(a, b) == dot(a, c)) && (a ~= [0, 0, 0])
    isequal(b, c)
end

isequal(dot(a, b) * b, a * dot(b, b))
