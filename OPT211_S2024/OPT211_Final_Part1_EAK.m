%OPT211 Final
%Ezra Alcon-Kirshman

%Part 1

% %question A
% 
% disp('Question A')
% 
% % i 
% disp('i')
% w = linspace(-2*pi,2*pi,8)
% 
% %ii
% disp('ii')
% yx = [0 1 2 3 4 5 6 7 8 9 10]
% 
% %iii
% disp('iii')
% g3 = 16:.5:20

%question B

% disp('Question B')
% 
% x = linspace(1,5);
% 
% y1x = 13.*exp(-2.*x)+2;
% 
% y2x = 13.*exp(-2.*x)+4*exp(-0.75.*x);
% 
% plot(x,y1x,x,y2x)

%question C

% %i
% A = [-5 1 2;4 6 -3;1 -2 1];
% 
% %ii
% inv(A);
% 
% %iii
% 
% eye(3)*A;
% 
% %iv
% 
% B = A(:,2);
% 
% %v
% 
% B(2,1) = -5;
% 
% %vi
% 
%  C = [A B];
% 
%  %vii
% 
%  rref(C);
% 
%  %the answers to the system are -1.57, -1.2, -2.83

%question D 

% function OPT211_Final_Part1D_EAK
% 
% % OPT211 Part 1 D 4/20/24
% % Is my number positive or negitive?
% % Inputs include and real valued number 
% % Outputs include "The input number is positive","The input number is negative","The input number is precisely zero."
% % By Ezra A-K
% 
% 
% N = input('Please input a number between negative infinity and infinity ');
% 
% if (N > 0)
%     disp('The input number is positive.');
% elseif (N < 0)
%         disp('The input number is negative.');
% elseif (N == 0)
%         disp('The input number is precisely zero.');
% else
%     warning('The input must be a number.');
% end

%Question E

% disp('It is important to recognise what color gradient you are using to represent the functions and perspective you chose')
% disp('becuase with an inproper view or color sceme it can be hard to tell what a graph is supposed to represnt.')

%PART 2

%Question A

% x = linspace(-2,5);
% y = linspace(0,25);
% 
% [x1,y1] = meshgrid(x,y);
% 
% z = sin(exp(x1)).*cos(log(y1));
% 
% figure(1)
% surf(z,'MeshStyle','none') 
% xlabel('x [Arb. Units]')
% ylabel('y [Arb. Units]')
% zlabel('z [Arb. Units')
% colormap('sky')
% title('Surf Graph of function f(x,y)')
% 
% figure(2)
% imagesc(z) %create image 
% xlabel('x [Arb. Units]')
% ylabel('y [Arb. Units]')
% c2 = colorbar; %show color bar 
% c2.Label.String = 'z [Arb. Units]'; %Label color bar
% set(gca,'Ydir','normal') %Get current axis and change direction of y-axis
% colormap('sky')
% title('Imagesc Graph of function f(x,y)')

%Question B


% Define Aperture field

apl = 5000; % Size of the aperture field
ap = zeros(apl); % Define actual aperture plane
ap(1500:3500 , 2075:2250) = 1;
ap(1500:3500 , 2750:2925) = 1;

% Plot the aperture field
figure(1)
imagesc(ap) % Plot image of the aperture field
colormap gray % Set the color of the aperture field plot
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field


