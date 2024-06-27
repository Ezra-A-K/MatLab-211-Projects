% n = 5E3;                 % size of mask
% M = zeros(n);
% 
% x = I-n/2;                % mask x-coordinates 
% y = n/2-I;                % mask y-coordinates
% [X,Y] = meshgrid(x,y);    % create 2-D mask grid

apl = 5000;
ap = zeros(apl);


hold on

x1 = linspace(-5.956,5.956);
y1 = .03*x1.^2;
plot(x1,y1,'b');

t = 169.87133-9.54:0.01:360+10.12866699+9.54;
x2 = (6.325*cosd(t));
y2 = (3.162*sind(t));
plot(x2,y2);


x3 = [-7 -7];
y4 = [0.5 1];
line(x3,y4);

x5 = [-7 -6];
y6 = [1 1];
line(x5,y6);

x7 = [-7 -6.25];
y7 = [.5 .5];
line(x7,y7);


hold off


    
