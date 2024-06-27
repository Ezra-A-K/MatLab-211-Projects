%[Ezra Alcon-Kirshman]
%optics 211
%Lab 1, part 4
%This is a simple demonstration script
c=3e8; %speed of light in a vacuum in m/s
h=4.136e-15; %planck's constant, h, in eV*s
E=123; %Energy in meV
E2= E/1000; %converts the Energy from meV to eV
lambda = h*c/E2; %calculates the wavelegth corresponding to E in meters
lambda_um = lambda/10^-6; %computes the wavelength in microns
lambda_nm = lambda/10^-9; %computes the wavelength in nanometers
head=['the wavelength corresponding to an energy of',num2str(E2), 'eV is:']; %converts the energy value to a string and surrounds it with text
ans1=[num2str(lambda), 'm']; %converts the wavelength value to a string and provides units
ans2=[num2str(lambda_nm), 'um'];
ans3=[num2str(lambda_nm), 'nm'];
disp(head) %Displays an answer heading in the command window
disp(ans1) %Displays the wavelength in microns
disp(ans2) %Displays the wavelength in microns
disp(ans3) %Displays the wavelength in nanometers
sphere
disp('call me mat cause I be labing.')
