%% 1
figure;
line([0; 2], [0; 1])
line([0; -1], [0; 2])
line([-2; 0], [-4; 0])
%% 2
figure;
line([0, 0, 0; 2, 2, 3], [0, 2, 2; 1, 0, 0])
%% 3
figure;
subplot(2, 2, 1)
line([0; 2], [0; 1])
subplot(2, 2, 2)
line([0; 2], [2; 0])
subplot(2, 2, 4)
line([0; 3], [2; 0])
subplot(2, 2, 3)
line([0; 2], [0; 1])
line([0; 2], [2; 0])
line([0; 3], [2; 0])
%% 4
figure;
quiver(0, 0, 2, 1, 1, 'black', 'LineWidth', 3)
hold on
quiver(0, 2, 2, -2, 1, 'black', 'LineWidth', 3)
hold on
quiver(0, 2, 3, -2, 1, 'black', 'LineWidth', 3)
%% 5
figure;
quiver3(0, 0, 0, 1, 0, 0, 1)
hold on
quiver3(0, 0, 0, 0, 1, 0, 1)
quiver3(0, 0, 0, 0, 0, 1, 1)
%% 6
figure;
quiver(0, 0, 0, 10, 1, 'LineWidth', 2)
hold on
quiver(0, 0, 10, 0, 1, 'LineWidth', 2)
quiver(0, 0, 0, 1, 1, 'black', 'LineWidth', 4)
quiver(0, 0, 1, 0, 1, 'black', 'LineWidth', 4)
%% 7
figure;
quiver3(0, 0, 0, 0, 10, 0, 1, 'LineWidth', 2)
hold on
quiver3(0, 0, 0, 10, 0, 0, 1, 'LineWidth', 2)
quiver3(0, 0, 0, 0, 0, 10, 1, 'LineWidth', 2)
quiver3(0, 0, 0, 1, 0, 0, 1, 'black', 'LineWidth', 4)
quiver3(0, 0, 0, 0, 1, 0, 1, 'black', 'LineWidth', 4)
quiver3(0, 0, 0, 0, 0, 1, 1, 'black', 'LineWidth', 4)
%% 8.1
figure;
plot(-1, 3.5, 'o')
hold on
text(-1, 3.5, ' (-1, 3.5)')
plot(2, -5, 'o')
text(2, -5, '(2, -5)')
line([-1; 2], [3.5; -5])
axis([-1 2 -6 4])
grid on
axis equal
%% 8.2
figure;
plot(1, -1, 'o')
hold on
text(1, -1, ' (1, -1)')
plot(4, 0, 'o')
text(4, 0, '(4, 0)')
plot(2, -3.5, 'o')
text(2, -3.5, '(2, -3.5)')
plot(3, -5, 'o')
text(3, -5, '(3, -5)')
line([1, 4; 2, 3], [-1, 0; -3.5, -5])
axis([0 5 -6 1])
grid on
axis equal
%% 9
figure;
plot(-2, 0, 'o')
hold on
text(-2, 0, 'A')
plot(1, 2, 'o')
text(1, 2, 'B')
plot(1, -1, 'o')
text(1, -1, 'C')
quiver(-2, 0, 3, 2, 1, 'blue')
quiver(1, 2, 0, -3, 1, 'blue')
quiver(-2, 0, 3, -1, 1, 'r')
axis([-3 2 -2 3])
%% 10
figure;
subplot(1, 2, 1)
a = [-2, 0];
b = [1, 2];
c = [1, -1];
d = [a(1) + (c(1) - b(1)), 0 + (c(2) - b(2))];
line([a(1), b(1), c(1), d(1); b(1), c(1), d(1), a(1)], [a(2), b(2), c(2), d(2); b(2), c(2), d(2), a(2)])
hold on
text(d(1), d(2), 'D')
text(a(1), a(2), 'A')
text(b(1), b(2), 'B')
text(c(1), c(2), 'C')
axis([-3 2 -2 3])
grid on
axis equal
subplot(1, 2, 2)
quiver(a(1), a(2), b(1) - a(1), b(2) - a(2), 1, 'blue')
hold on
quiver(b(1), b(2), c(1) - b(1), c(2) - b(2), 1, 'black')
quiver(a(1), a(2), d(1) - a(1), d(2) - a(2), 1, 'blue')
quiver(a(1), a(2), c(1) - a(1), c(2) - a(2), 1, 'r')
quiver(c(1), c(2), d(1) - c(1), d(2) - c(2), 1, 'black')
text(d(1), d(2), 'D')
text(a(1), a(2), 'A')
text(b(1), b(2), 'B')
text(c(1), c(2), 'C')
axis([-3 2 -2 3])
grid on
axis equal
%% 11
figure;
subplot(1, 2, 1)
a1 = [2, 4, 6];
b1 = [3, 5, 2];
c1 = [a1(1) + b1(1), a1(2) + b1(2), a1(3) + b1(3)];
quiver3(0, 0, 0, a1(1), a1(2), a1(3), 1)
hold on
quiver3(0, 0, 0, b1(1), b1(2), b1(3), 1)
quiver3(0, 0, 0, c1(1), c1(2), c1(3), 1)
text(a1(1) / 2, a1(2) / 2, a1(3) / 2, '{\bf}a1')
text(b1(1) / 2, b1(2) / 2, b1(3) / 2, '{\bf}b1')
text(c1(1) / 2, c1(2) / 2, c1(3) / 2, '{\bf}c1')
grid on
axis equal
subplot(1, 2, 2)
a2 = [7, 6, 5];
b2 = [3, 5, 2];
c2 = [a2(1) - b2(1), a2(2) - b2(2), a2(3) - b2(3)];
quiver3(0, 0, 0, a2(1), a2(2), a2(3), 1)
hold on
quiver3(0, 0, 0, b2(1), b2(2), b2(3), 1)
quiver3(0, 0, 0, c2(1), c2(2), c2(3), 1)
text(a2(1) / 2, a2(2) / 2, a2(3) / 2, '{\bf}a2')
text(b2(1) / 2, b2(2) / 2, b2(3) / 2, '{\bf}b2')
text(c2(1) / 2, c2(2) / 2, c2(3) / 2, '{\bf}c2')
grid on
axis equal
