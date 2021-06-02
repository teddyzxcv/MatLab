%% 2
syms x
syms y
syms z
syms a
syms n
limit((10 + x)^(1 / x), x, 0, 'left')
limit((10 + x)^(1 / x), x, 0, 'right')
%% 3
syms dx
diff(atan(x))
P = ((atan(x + dx) - atan(x)) / dx);
limit(P, dx, 0)
%% 4
limit((9 * x^2 -1) / (x + 1/3), x, -1/3)
%% 5
diff((3 * cos(5 * x^2))^3)
%% 6
diff(sin(x + 2 * y) + 2 * sqrt(x * y * z), x, 2)
diff(log(3 - x^2) + x * y^2 * z, x, 2)
diff(x^2 - atan(y + z^3), x, 2)
diff(x^3 * y^2 * z + 3 * x - 5 * y + z + 2, x, 2)
%% 7
limit(sin(x) / x, x, 0)
limit((1 - exp(-x)) / x, x, inf)
limit((1 - x) / log(x), x, 1)
%% 8
diff((x^2) * cos(2 * x), x, 5)
%% 9
limit(1 - (exp(1))^ - x / x, x, inf)
%% 10
diff(exp(-a * x^5) + log(a^n + x^a) - a * n / x^3, x, 1)
