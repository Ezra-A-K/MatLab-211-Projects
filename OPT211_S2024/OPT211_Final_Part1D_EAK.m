function OPT211_Final_Part1D_EAK

% OPT211 Part 1 D 4/20/24
% Is my number positive or negitive?
% Inputs include and real valued number 
% Outputs include "The input number is positive","The input number is negative","The input number is precisely zero."
% By Ezra A-K 


N = input('Please input a number between negative infinity and infinity ');

if (N > 0)
    disp('The input number is positive.');
elseif (N < 0)
        disp('The input number is negative.');
elseif (N == 0)
        disp('The input number is precisely zero.');
else
    warning('The input must be a REAL number.');
end

