%Ezra Alcon-Kirshman, OPT 211 lab 2, Post-Lab

lam1=380E-9; % Wavelength of light in meters, violet
lam2=450E-9; % Wavelength of light in meters, blue 
lam3=500E-9; % Wavelength of light in meters, green
lam4=580E-9; % Wavelength of light in meters, yellow
lam5=750E-9; % Wavelength of light in meters, red
R=5E-3; % Distance from aperture to observation plane in meters
a=3E-6; % Radius of the aperture in meters
Io=1; % Define Initial intensity of light
q=linspace(-1E-3,1E-3,1000); % Define radial distance from optical axis in observation plane in meters
N = R/(2*a);

x1 = ((pi*q)./(lam1.*N));
x2 = ((pi*q)./(lam2.*N));
x3 = ((pi*q)./(lam3.*N));
x4 = ((pi*q)./(lam4.*N));
x5 = ((pi*q)./(lam5.*N));


I1 = Io.*(2.*(besselj(1,x1)./x1)).^2; % intensity for violet
I2 = Io.*(2.*(besselj(1,x2)./x2)).^2;% intensity for blue
I3 = Io.*(2.*(besselj(1,x3)./x3)).^2; % intensity for green
I4 = Io.*(2.*(besselj(1,x4)./x4)).^2; % intensity for yellow
I5 = Io.*(2.*(besselj(1,x5)./x5)).^2; % intensity for red

plot(q, I1,'m', q,I2,'b', q,I3,'g', q,I4,'y', q,I5,'r', 'LineWidth', 2)

ylim([0 1.05])
title('Diffraction Limited Spot Size','fontsize' , 30)
xlabel('\lambda [meters]','fontweight','bold', 'fontsize' , 30)
ylabel('Arb. Units','fontweight','bold', 'fontsize' , 30)
legend('Violet', 'Blue', 'Green', 'Yellow', 'Red', 'fontweight','bold','edgeColor','black', 'fontsize' ,30, 'textcolor', 'white', 'color', 'black')
set(gca, 'color', [0 0 0])
set(gca, 'XColor', 'white', 'YColor', 'white')
set(gcf,'color', 'black')



