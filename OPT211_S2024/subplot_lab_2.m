%Ezra Alcon-Kirshman, OPT 211 lab 2, subplot in radians from -2pi to 2pi
x1 = linspace(-2*pi,2*pi,3);
x2 = linspace(-2*pi,2*pi,5);
x3 = linspace(-2*pi,2*pi,10);
x4 = linspace(-2*pi,2*pi,25);
x5 = linspace(-2*pi,2*pi,100);
x6 = linspace(-2*pi,2*pi,10000);
figure
subplot(3,2,1) %plots a figure in space 1 of 6 of a 3 row 2 colum set
plot(x1,sin(x1)) %plots sin(x1)
subplot(3,2,2)% plots a figure in space 2 of 6 of a 3 row 2 colum set
plot(x2,sin(x2))%plots sin(x2)
subplot(3,2,3)%plots a figure in space 3 of 6 of a 3 row 2 colum set
plot(x3,sin(x3))%plots sin(x3)
subplot(3,2,4)%plots a figure in space 4 of 6 of a 3 row 2 colum set
plot(x4,sin(x4))%plots sin(x4)
subplot(3,2,5)%plots a figure in space 5 of 6 of a 3 row 2 colum set
plot(x5,sin(x5))%plots sin(x5)
subplot(3,2,6)%plots a figure in space 6 of 6 of a 3 row 2 colum set
plot(x6,sin(x6))%plots sin(x6)
sgtitle('sin(x) with varying resolution') %creates a main title over subplots
