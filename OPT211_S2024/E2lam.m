function E2lam(en,unit,ew,n)
%Ezra Alcon-Kirshman
%optics 211
%energy to wavelength converter
%to use run function with "en" as energy in meV and n as index of refraction

c=3e8; %speed of light in a vacuum in m/s
h=4.136e-15; %planck's constant
E= en/1000; %converts the Energy from meV to eV

lambda1 = h*c/E; %calculates the wavelength corresponding to E in meters
lambda = lambda1/n; %takes refractive index into account
lambda_um = lambda/10^-6; %computes the wavelength in microns
lambda_nm = lambda/10^-9; %computes the wavelength in nanometers

head=['the wavelength corresponding to an energy of',num2str(ew),unit, ' and an index of refraction of ',num2str(n), ' is:']; %converts the energy value to a string and surrounds it with text
ans1=[num2str(lambda), 'm']; %converts the wavelength value to a string and provides units
ans2=[num2str(lambda_um), 'um'];
ans3=[num2str(lambda_nm), 'nm'];

disp(head) %Displays an answer heading in the command window
disp(ans1) %Displays the wavelength in microns
disp(ans2) %Displays the wavelength in microns
disp(ans3) %Displays the wavelength in nanometers

