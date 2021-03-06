%% 1
x = -2:0.01:2;
y = exp(-x) .* sin(10 .* x);
plot(x, y)
grid on
%% 2.1
x = 0:0.001:5;
y = exp(-x) .* sin(10 .* x);
plot(x, y)
area(x, y)
%% 2.2
comet(x, y)
%% 2.3
z = x
comet3(x, y, z, 0.9)
view(-58, -13)
grid on
%% 3
X = [25 10 20 30 15]
ex = [0 1 0 0 0]
grid on;
hold on;
pie3(X, ex)
view(-45, 30)
%% 4
x = 0:0.01:1
y = exp(-x) .* (sin(x) + 0.1 * sin(100 * pi * x));
plot(x, y, 'r')
hold on;    
x = 0:1/99:1
y = exp(-x) .* (sin(x) + 0.1 * sin(100 * pi * x));
plot(x, y, 'green')
%% 5
x = 0:0.005:10;
fx = log(2 .* x);
gx = log(x) .* sin(2 .* x);
subplot(2, 2, 1)
loglog(x, fx, 'r')
hold on
title('log by x and y')
loglog(x, gx, 'green')
legend('ln(2x)', 'ln(x) * sin(2x)', 'Location', 'northwest');
xlabel('x')
ylabel('y');
hold off
subplot(2, 2, 2)
semilogx(x, fx, 'r')
hold on
title('log by x')
semilogx(x, gx, 'green')
legend('ln(2x)', 'ln(x) * sin(2x)', 'Location', 'northwest');
xlabel('x')
ylabel('y');
hold off
subplot(2, 2, 3)
semilogy(x, fx, 'r')
hold on
title('log by y')
semilogy(x, gx, 'green')
legend('ln(2x)', 'ln(x) * sin(2x)', 'Location', 'northwest');
xlabel('x')
ylabel('y');
hold off
%% 6
t = -pi:0.01:pi;
x = 2 * sin(t);
y = 4 * cos(t);
plot(x, y)
%% 7
[x, y] = meshgrid(-2:0.05:2)
z = 4 .* sin(2 * pi .* x) .* cos(1.5 * pi .* y) .* (1 -(y .* y)) .* x .* (1 - x);
mesh(x, y, z, 'FaceAlpha', '0')
view(10, 45)
%% 8
[x, y] = meshgrid(-2:0.05:2);
z = 4 .* sin(2 * pi .* x) .* cos(1.5 * pi .* y) .* (1 -(y .* y)) .* x .* (1 - x);
contour3(x, y, z, -3:0.01:3)
colorbar;
view(30, 45)
%% 9
[x, y] = meshgrid(-2:0.05:2);
z = 4 .* sin(2 * pi .* x) .* cos(1.5 * pi .* y) .* (1 -(y .* y)) .* x .* (1 - x);
surfl(x, y, z, [-90 45])
colormap(summer)
%% 10
[x, y] = meshgrid(-1:0.05:1)
z = (sin(x) .* sin(x) + cos(y) .* cos(y)).^(x .* y)
subplot(2, 2, 1)
fig = mesh(x, y, z)
view(10, 45)
subplot(2, 2, 2)
fig = surf(x, y, z)
colorbar
view(100, 45)
subplot(2, 2, 3)
fig = contour3(x, y, z, -0.72:0.01:1.027)
view(70, 45)
subplot(2, 2, 4)
fig = surfl(x, y, z, [-90 45])
view(40, 45)
