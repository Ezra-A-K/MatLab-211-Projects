% Optics 211
% Lab 3
% Prepared by Ezra A-K
% 2/29/24
%
% This script is designed to fill the workspace with the matrices necessary
% to complete the in-class portion of lab 3.  When the script is run via
% the command window, it will not yield any results or answers; however,
% the workspace will be filled with matrices.  These matrices can be called
% up from the command window for further manipulation.
%
% Appendix 1 of lab 3 serves as a companion to this script and shows all
% the matrices generated here in traditional mathematical formatting.
%
% This script can be found in Appendix 2 of lab 3.


% Part 1 of 2 of lab 3
 
% 5x5 matrix for data manipulation
A51= reshape((1:25), [5,5])';
 
% 4x4 matrix for computing the inner product and finding determinant and
% inverse
A41= [[1 2 3 4];[2 4 7 11];[3 7 14 25];[4 11 25 50]] ;

% 1x4 and 4x1 matrices for evaluating the inner product and using transpose
% operator
B41= [5 10 15 20];
B42= [5;10;15;20];

% 2x2 Matrix (invertible)
A21= [2 3;5 8];

% 2x2 Matrix (non-invertible)
A22= [6 3;8 4];


% Part 2 of 2 of lab 3

% 2 equation, 2 unknown, linear system of equations with 1 solution
A23= [2 6;-5 4];
B23= [10;-3];

% 3 equation, 3 unknown, linear system with 1 solution
A31= [1 2 3;1 3 2;3 2 1];
B31= [39;34;26];

% 3 equation, 3 unknown, linear system with an infinite number of solutions
A32= [2 4 6;4 5 6;7 8 9];
B32= [0;3;6];

% 3 equation, 3 unknown, linear System with no solution
A33= reshape((1:9), [3,3])';
B33= [0;3;0];

% End of script
