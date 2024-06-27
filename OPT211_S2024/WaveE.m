function WaveE(unit,ew,n)

% Ezra Alcon-Kirshman
% Optics 211 Lab 4, Part 1
% 3/6/2024
%
%
% This function converts between energy and wavelength in a material with a
% given index of refraction, n.  
% 
% When converting from energy to wavelength, the output will be the 
% wavelength in a material with a specified index of refraction, n.
%
% When converting from wavelength to energy, the input wavelength must 
% correspond to the wavelength in the specified material with index of
% refraction, n. The program will not convert free-space wavelength to
% wavelength in the material for you.  The assumed input is the wavelength
% in the material in interest.
%
% The function is called from the command window as follows:
%
%      WaveE(unit,ew,n)
%
%   where "unit" is chosen from the set of units listed above (and input
%   as a string), "ew" is the magnitude of the input wavelength/energy in 
%   the chosen unit, and n is the index of refraction in the 
%   medium of interest.
%   
%   NOTE: Index of refraction in air or vacuum is 1.0
%   NOTE: The value for unit must be input as a string
%
%
% The following energy units may be entered (as a string and exactly
% as shown here):
%     'J'    (Joules)
%     'eV'   (electronvolts)
%     'meV'  (milli-electronvolts)
% 
% The following wavelength units may be entered (as a string and exactly
% as shown here):
%     'km    (kilometers (10^3 meters))
%     'm'    (meters)
%     'cm'   (centimeters (10^-2 meters))
%     'mm'   (millimeters (10^-3 meters))
%     'um'   (microns (10^-6 meters))
%     'nm'   (nanometers (10^-9 meters))
%     'A'    (Angstroms (10^-10 meters))
%
%   
% The function will output a pre-determined set of energy or wavelength
% units
% 
% If an invalid unit is entered, the function will display:
%
%   "ERROR: Invalid Unit
%       Please input one of the following units:
%         Wavelength: 'km' 'm' 'cm' 'mm' 'um' 'mm' 'A'
%         Energy: 'J' 'eV' 'meV'
%
%       See the help file for more information"
%
%
% Only units included in the lists above may be utilized when executing
% this funtion.
%
%
% Help file written by: Gregory R. Savich, PhD, 2016.
%
% Portions of this script were adapted from Optics 211, Lab 1, 
% parts 4 and 5, written on 12/28/2015.


% Define Constants

c = 3e8; %speed of light
h = 6.626e-34; %planck's constant
Js = 4.136e10-15; %juels per second 
eh = 0; %define starting value for eh - used in logical statement 

% Convert Units
%   -- This section selects the correct unit conversion for whatever the
%      input unit string happens to be --
%
% Conversion of Wavelength to Energy
if NEED LOGICAL STATEMENT HERE (AND ALL elseif BELOW)
    NEED UNIT CONVERSION HERE (AND ALL elseif BELOW)
elseif 
    
    
% Conversion of Energy to Wavelength
elseif 
    

% The next statement in the conditional series describes what to do if an
% incorrect/unrecognized unit is provided as an input
else
    DEFINE ERROR STATEMENT HERE - FOLLOW WITH RETURN COMMAND
   
  
end


% Calculate Energy/Wavelengths and prepare to display answer
%   -- This section actually converts the energy to wavelength or
%      vice versa according to the results of the if/else statements
%      above
%
% For the case where the input is a wavelength to be converted to energy:
if 
    % The next three lines calculate the energy from the wavelength in
    % three different units
    
    CALCULATE
    
    % The next 4 lines will define the output strings for the answer, but
    % will not display them
    
    PREPARE STRINGS
    
    
% For the case where the input is a wavelength to be converted to energy:
else
    % The next three lines convert the energy to wavelength in three
    % different units
    
    CALCULATE
    
    % The next 4 lines will define the output strings for the answer, but
    % will not display them
   
    PREPARE STRINGS
    
    
end

% Display Answer

DISPLAY STRINGS




% End of Script