% Define the refractive indices and the angle of incidence
n1 = 1; % refractive index of medium 1 (e.g., air)
n2 = 1.5; % refractive index of medium 2 (e.g., glass)
theta1 = 45; % angle of incidence in degrees

% Convert the angle of incidence to radians
theta1_rad = deg2rad(theta1);

% Calculate the angle of refraction using Snell's Law
theta2_rad = asin(n1/n2 * sin(theta1_rad));

% Define the incident ray
x1 = -1:0.01:0;
y1 = tan(theta1_rad) * x1;

% Define the refracted ray
x2 = 0:0.01:1;
y2 = tan(theta2_rad) * x2;

% Plot the incident and refracted rays
figure;
plot(x1, y1, 'r', 'LineWidth', 2); hold on;
plot(x2, y2, 'b', 'LineWidth', 2); hold off;

% Set the plot limits
xlim([-1, 1]);
ylim([-1, 1]);

% Add labels and title
xlabel('x');
ylabel('y');
title('Demonstration of Snell''s Law');
legend('Incident ray', 'Refracted ray');

% Display the plot
grid on;
