% Define the lines
x1 = linspace(-5.956,5.956) * 600;
y1 = .03*x1.^2;

t = 169.87133-9.54:0.01:360+10.12866699+9.54;
x2 = (6.325*cosd(t)) * 600;
y2 = (3.162*sind(t)) * 600;

% Create a grid of points
[X, Y] = meshgrid(linspace(min([x1, x2]), max([x1, x2]), 500), linspace(min([y1, y2]), max([y1, y2]), 500));

% Check if each point is inside the shape
disp('test1')
binary_img2 = inpolygon(X, Y, [x1, fliplr(x2)], [y1, fliplr(y2)]);
disp('test2')

% Now, 'binary_img' is a matrix of 0s (black) and 1s (white)

imshow(binary_img2)