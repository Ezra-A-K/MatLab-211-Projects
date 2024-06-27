



% Define the lines
x1 = linspace(-5.956,5.956);
y1 = .03*x1.^2;

t = 169.87133-9.54:0.01:360+10.12866699+9.54;
x2 = (6.325*cosd(t));
y2 = (3.162*sind(t));

% Create a grid of points
[X, Y] = meshgrid(linspace(min([x1, x2]), max([x1, x2]), 500), linspace(min([y1, y2]), max([y1, y2]), 500));

% Check if each point is inside the shape
disp('this is test 1')

binary_img = inpolygon(X, Y, [x1, fliplr(x2)], [y1, fliplr(y2)])

disp('this is a test')

% Now, 'binary_img' is a matrix of 0s (black) and 1s (white)
