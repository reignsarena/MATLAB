% Define the points
P1 = [0, 0, 0];
P2 = [0, 1, 1];
R1 = [1, 0, 1];
R2 = [1, 1, 0];

% Parametric equations for p(u) and r(u)
p = @(u) (1 - u) * P1 + u * P2;
r = @(u) (1 - u) * R1 + u * R2;

% Parametric surface equation s(u, v)
s = @(u, v) (1 - v) * p(u) + v * r(u);

% Define the grid for u and v
u_vals = linspace(0, 1, 100);
v_vals = linspace(0, 1, 100);

% Initialize the surface data matrices
[X, Y] = meshgrid(u_vals, v_vals);
Z = zeros(size(X));

% Calculate the points on the surface
for i = 1:numel(X)
    s_point = s(X(i), Y(i));
    Z(i) = s_point(3);
end

% Evaluate the two curves p(u) and r(u)
p_vals = arrayfun(@(u) p(u), u_vals, 'UniformOutput', false);
r_vals = arrayfun(@(u) r(u), u_vals, 'UniformOutput', false);

p_vals = cell2mat(p_vals');
r_vals = cell2mat(r_vals');

% Plot the curve p(u)
plot3(p_vals(:, 1), p_vals(:, 2), p_vals(:, 3), 'r', 'LineWidth', 2);
hold on;

% Plot the curve r(u)
plot3(r_vals(:, 1), r_vals(:, 2), r_vals(:, 3), 'b', 'LineWidth', 2);
hold on;

% Plot the surface
surf(X, Y, Z, 'FaceAlpha', 0.5, 'EdgeColor', 'none');
hold on;
