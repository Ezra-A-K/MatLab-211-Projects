function OPT211_lab4_test(unit,ew,n)

%Ezra A-K 
%OPT 211
%wave to energy / energy to wave converter
%unit can be inputed as:
% 'J' , 'eV' , 'meV' , 'km' , 'm' , 'cm' , 'mm' ,'um' , 'nm' , 'A'
%ew is wavelegth or energy 
%n is refractive index
%outputs are:
% m, um, nm / eV, meV, J

%constants and varables
% (I know the constants are not used in this function)
c = 3e8; %speed of light
h = 4.136e-15; %planck's constant 
eh = 2;
en = 0;
wv = 0;

%check if function is in energy and convert to meV
if (strcmp(unit,'J')==1)
    eh = 1;
    en = ew*6.2415e21;
elseif (strcmp(unit,'eV')==1)
    eh = 1;
    en = ew*1000;
elseif (strcmp(unit,'meV')== 1)
    eh = 1;
    en = ew;
end

%check if function is wavelength and convert to nm
if (strcmp(unit,'km')==1)
    eh = 0;
    wv = ew*1e12;
elseif (strcmp(unit,'m')==1)
    eh = 0;
    wv = ew*1e9;
elseif (strcmp(unit,'cm')==1)
    eh = 0;
    wv = ew*1e7;
elseif (strcmp(unit,'mm')==1) 
    eh = 0;
    wv = ew*1e6;
elseif (strcmp(unit,'um')==1)
    eh = 0;
    wv = ew*1e3;
elseif (strcmp(unit,'nm')==1)
    eh = 0;
    wv = ew;
elseif (strcmp(unit,'A')==1)
    eh = 0;
    wv = ew*1e-1;
end

%check if funtction is energy or wavelength and runs approprate function 
if eh == 2
    warning('please input valid unit, for more help review help file.')
elseif eh == 0
    Wave2Energy(wv,unit,ew,n)
elseif eh == 1 
    E2lam(en,unit,ew,n)  
end


   
