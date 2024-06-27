%OPT211 Lab 5
%Ezra Alcon-Kirshman
%wave generator 

A=2;
lam=370;
x=(2/3)*pi;
the=60;
y=1/pi;

[x1,y1]=meshgrid(x,y);

z1 = A*cosd(((2*pi)/lam)*(x1*cosd(the)+y1*sind(the)));

figure(1)
surf(z1) %Surface Plot 
xlabel('x [Arb. Units]')
ylabel('y [Arb. Units]')
zlabel('z [Arb. Units')
