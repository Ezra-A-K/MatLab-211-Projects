function lab5_wave_EAK %(A1,the1,lam1,phi1,A2,the2,lam2,phi2)

%OPT211 Lab 5
%Ezra Alcon-Kirshman
%wave generator 


x=linspace(0,2*pi,1000);
y=linspace(0,2*pi,1000);

[x1,y1]=meshgrid(x,y);

A1 = input('Enter Amplitute one ');
the1 = input('Enter angle one ');
lam1 = input('Enter wavelength one ');
phi1 = input('Enter phase shift one ');
z1 = A1*cos(((2*pi)/lam1)*(x1*cosd(the1)+y1*sind(the1))+phi1);

A2 = input('Enter Amplitute two ');
the2 = input('Enter angle two ');
lam2 = input('Enter wavelength two ');
phi2 = input('Enter phase shift two ');
z2 = A2*cos(((2*pi)/lam2)*(x1*cosd(the2)+y1*sind(the2))+phi2);
zt=z1+z2;

% figure(1)
% surf(z1) %Surface Plot with no mesh
% xlabel('x [Arb. Units]')
% ylabel('y [Arb. Units]')
% zlabel('z [Arb. Units')

figure(2)
surf(z1,'MeshStyle','none') %Surface Plot with no mesh
xlabel('x [Arb. Units]')
ylabel('y [Arb. Units]')
zlabel('z [Arb. Units')

figure(3)
surf(x,y,zt,'MeshStyle','none') %Surface Plot with no mesh
xlabel('x [Arb. Units]')
ylabel('y [Arb. Units]')
zlabel('z [Arb. Units')
colormap cool

% figure(4)
% contourf(x,y,z1) %filled in contour plot
% xlabel('x [Arb. Units]')
% ylabel('y [Arb. Units]')
% cl=colorbar; %show color bar
% cl.Label.String='z [Arb. Units]'; %Label color bar 

figure(5)
imagesc(x,y,zt) %create image 
xlabel('x [Arb. Units]')
ylabel('Arb. [Units]')
c2=colorbar; %show color bar 
c2.Label.String='z [Arb. Units]'; %Label color bar
set(gca,'Ydir','normal') %Get current axis and change direction of y-axis
colormap cool






