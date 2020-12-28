%% MATLAB
%% 1.1 Для решение задачи пользую цикл для подбора начальная точка когда fval = 0.
%% Начальная точка 1.1 получается [1,1], а 1.2 - [-8,-2,7]
for index11 = -10:1:10

    for index12 = -10:1:10
        [x, fval] = fsolve(@System1, [index11, index12])

        if fval == 0
            break;
        end

    end

    if fval == 0
        break;
    end

end

for index21 = -10:1:10

    for index22 = -10:1:10

        for index23 = -10:1:10
            [x, fval] = fsolve(@System2, [index21, index22, index23])

            if fval == 0
                break;
            end

        end

        if fval == 0
            break;
        end

    end

    if fval == 0
        break;
    end

end

%% Answer 1.1 Начальная точка = [1,1]
index11
index12
options = optimset('Display', 'iter')
[x, fval] = fsolve(@System1, [index11, index12], options)
%% Answer 1.2 Начальная точка = [-8,-2,7]
index21
index22
index23
[x, fval] = fsolve(@System2, [index21, index22, index23], options)
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

%% Function for 1
function F = System1(x)
    F(1) = x(1)^2 - 2 * x(2)^2 + 1;
    F(2) = -3 * x(1)^2 + x(2)^2 + 2;
    F(3) = x(1)^3 + x(2)^3 - 2;
end

function F = System2(x)
    F(1) = x(1)^2 - 2 * x(2)^2 +x(3) + 1
    F(2) = -3 * x(1)^2 + x(2)^2 + x(3) + 2
end
