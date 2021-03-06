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
mesh(x, y, z, 'FaceAlpha', '0')
%% 4
t = 0:0.2:2;
x = 0.5 .* t;
y = 0.8 .* t .* (1 - 0.5 .* t);
Ux(1:length(x)) = 0.5;
Uy = 0.8 .* (1 - t);
subplot(2, 2, 1)
quiver(x, y, Ux, Uy, 0)
subplot(2, 2, 2)
quiver(x, y, Ux, Uy, 1.5)
subplot(2, 2, 3)
quiver(x, y, Ux, Uy, 3)
%% 5
t = 0:0.2:2;
x = 0.5 .* t;
y = 0.8 .* t .* (1 - 0.5 .* t);
Ux(1:length(x)) = 0.5;
Uy = 0.8 .* (1 - t);
fign = figure
figure(fign)
subplot(2, 2, 1)
quiver(x, y, Ux, Uy, 0)
subplot(2, 2, 2)
quiver(x, y, Ux, Uy, 1.5)
subplot(2, 2, 3)
quiver(x, y, Ux, Uy, 3)
figure(fign)
%% 6
t = 0:0.2:2;
Ux0 = 0.5;
Uy0 = 0.8;
x = 0.5 .* t;
y = 0.8 .* t .* (1 - 0.5 .* t);
Ux(1:length(x)) = 0.5;
Uy = 0.8 .* (1 - t);
compass(Ux, Uy)
%% 7
t = 0:0.2:2;
Ux0 = 0.5;
Uy0 = 0.8;
x = 0.5 .* t;
y = 0.8 .* t .* (1 - 0.5 .* t);
Ux(1:length(x)) = 0.5;
Uy = 0.8 .* (1 - t);
feather(Ux, Uy)
%% 8
u = (-2 * pi:0.1 * pi:2 * pi)';
v = [-2 * pi:0.1 * pi:2 * pi];
x = sin(u) * cos(v);
y = sin(u) * sin(v);
z = cos(u) * ones(size(v));
surf(x, y, z)
[U, V, W] = surfnorm(x, y, z);
hold on
quiver3(x, y, z, U, V, W, 4, 'k')
view(45, 45)
hold off
%% 9
xL = -2; xR = 0;
yL = 0; yR = 2;
zL = 0; zR = 2;
a = 1.5; b = 3;
x = xL:0.05:xR;
y = yL:0.05:yR;
z = (x.^2 ./ a.^2 - y.^2 ./ b.^2) ./ 2;
[X, Y, Z] = meshgrid(x, y, z);
U = X ./ sqrt(X.^2 + Y.^2 + Z.^2);
V = Y ./ sqrt(X.^2 + Y.^2 + Z.^2);
W = Z ./ sqrt(X.^2 + Y.^2 + Z.^2);
grid on
quiver3(X, Y, Z, U, V, W)
%% 10
xL = -2; xR = 0;
yL = -2; yR = 0;
zL = 0; zR = 2;
a = 1; b = 2; c = 1;
x = xL:0.05:xR;
y = yL:0.05:yR;
z = sqrt((1 + x.^2 ./ a.^2 + y.^2 ./ b.^2) .* (c.^2));
[X, Y, Z] = meshgrid(x, y, z);
U = X ./ sqrt(X.^2 + Y.^2 + Z.^2);
V = Y ./ sqrt(X.^2 + Y.^2 + Z.^2);
W = Z ./ sqrt(X.^2 + Y.^2 + Z.^2);
[Cx, Cy, Cz] = meshgrid(xL:(xR - xL) / 3:xR, yL:(yR - yL) / 3:yR, zL:(zR - zL) / 3:zR);
grid on
fig = coneplot(X, Y, Z, U, V, W, Cx, Cy, Cz, 4)
set(fig, 'FaceColor', 'b', 'EdgeColor', 'g')
view(45, 45)
%% 11
u = (0:0.1:3)';
v = [0:0.1:3];
x = cos(u) .* cos(v);
y = sin(u) .* sin(v);
z = u .* v;
[X, Y, Z] = meshgrid(x, y, z);
U = X ./ sqrt(X.^2 + Y.^2 + Z.^2);
V = Y ./ sqrt(X.^2 + Y.^2 + Z.^2);
W = Z ./ sqrt(X.^2 + Y.^2 + Z.^2);
[Cx, Cy, Cz] = meshgrid(xL:(xR - xL) / 3:xR, yL:(yR - yL) / 3:yR, zL:(zR - zL) / 3:zR);
figure
grid on
fig = coneplot(X, Y, Z, U, V, W, Cx, Cy, Cz, 4)
set(fig, 'FaceColor', 'g', 'EdgeColor', 'k')
axis tight
view(45, 45)
%% 12
xL = 1; xR = 3;
yL = -1; yR = 1;
zL = 0; zR = 2;
[X, Y, Z] = meshgrid(xL:0.05:xR, yL:0.05:yR, zL:0.05:zR);
U = X ./ sqrt(X.^2 + Y.^2 + Z.^2);
V = Y ./ sqrt(X.^2 + Y.^2 + Z.^2);
W = Z ./ sqrt(X.^2 + Y.^2 + Z.^2);
[Cx, Cy, Cz] = meshgrid(xL:(xR - xL) / 3:xR, yL:(yR - yL) / 3:yR, zL:(zR - zL) / 3:zR);
figure
grid on
fig = coneplot(X, Y, Z, U, V, W, Cx, Cy, Cz, 4)
set(fig, 'FaceColor', 'c', 'EdgeColor', 'm')
axis tight
view(45, 45)
