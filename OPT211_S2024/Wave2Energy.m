function Wave2Energy(wv,unit,ew,n)
%Ezra Alcon-Kirshman
%optics 211
%wavelength to energy converter
% to use run function with "wv" as wavelength in nm and n as index of refaction


c=3e8; %speed of light in a vacuum in m/s
h=4.136e-15; %planck's constant
w = wv*10e-10;


EeV = (h*c)/(w*n); % converts wavelength to energy in eV
EmeV = EeV.*1000; %converts eV to meV
jo = EeV*(1.6022e-19); %converts eV to J
head=['the energy corresponding to a wavelength of ',num2str(ew),unit, ' and an index of refraction of ', num2str(n), ' is:']; %converts the wavelength to a string and surrounds it with text
ans1 = [num2str(EeV), ' eV'];
ans2 = [num2str(EmeV), ' meV'];
ans3 = [num2str(jo),'J'];

disp(head) %Displays an answer heading in the command window
disp(ans1) %Displays an answer in eV in the command window
disp(ans2) %Displays an answer in meV in the command window
disp(ans3) %Displays an answer in J in the command window
