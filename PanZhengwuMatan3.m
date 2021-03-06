%% 1
t = 0:0.01:100;
x = exp(-abs(t - 100) / 100) .* sin(t);
y = exp(-abs(t - 100) / 100) .* cos(t);
z = t;
plot3(x, y, z)
%% 2
u = (-4 * pi:0.1 * pi:4 * pi)';
v = [-4 * pi:0.1 * pi:4 * pi];
x = 0.5 * u * cos(v);
y = 0.5 * u * sin(v);
z = u * ones(size(v));
surf(x, y, z)
shading interp
%% 3
u = (-2 * pi:0.1 * pi:2 * pi)';
v = [-2 * pi:0.1 * pi:2 * pi];
x = cos(u) * cos(v);
y = 0.6 * cos(u) * sin(v);
z = 0.8 * sin(u) * ones(size(v));
mesh(x, y, z)
hidden off
