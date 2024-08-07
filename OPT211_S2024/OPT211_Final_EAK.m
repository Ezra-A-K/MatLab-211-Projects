%OPT211 Final
%Ezra Alcon-Kirshman

%Part 1

% %question A
%  
% % i 
% 
% w = linspace(-2*pi,2*pi,8)p1
% 
% %ii
% 
% yx = [0 1 2 3 4 5 6 7 8 9 10]
% 
% %iii
% 
% g3 = 16:.5:20


% %question B
% 
% x = linspace(1,5);
% 
% y1x = 13.*exp(-2.*x)+2;
% 
% y2x = 13.*exp(-2.*x)+4*exp(-0.75.*x);
% 
% plot(x,y1x,x,y2x)
% %if run each line at a time (I.E copy and paste each line separately and run them one after another)
% %in the command window it will still function
% %the labeled plot will be attached as a .fig file

% Question C

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
% %if run each line at a time (I.E copy and paste each line separately and run them one after another)
% %in the command window it will still function


% %question D 
% 
% % function OPT211_Final_EAK
% % 
% % OPT211 Part 1 D 4/20/24
% % Is my number positive or negative?
% % Inputs include and real valued number such as 1, 352, -76, .049, -0.12
% % Outputs include "The input number is positive","The input number is negative","The input number is precisely zero."
% % By Ezra A-K
% 
% 
% % user input variable
% N = input('Please input a real number between negative infinity and infinity ');
% 
% %checks if the user input is positive or negative
% if N > 0
%     disp('The input number is positive.');
% elseif N < 0
%         disp('The input number is negative.');
% elseif N == 0
%         disp('The input number is precisely zero.');
% else
%     % i, "For when you have an over-active imagination!"
%     error('The input must be a REAL number.');
% end


% Question E

%disp('It is important to recognize what color gradient you are using to represent the functions and perspective you chose')
%disp('because with an improper view or color scheme it can be hard to tell what a graph is supposed to represent.')


%PART 2

% %Question A
% 
% % creates x and y varibles and thier bounds
% x = linspace(-2,5);
% y = linspace(0,25);
% 
% % combines x and y into one matix for use in function
% [x1,y1] = meshgrid(x,y);
% 
% %a function of x, y and z
% z = sin(exp(x1)).*cos(log(y1));
% 
% % creates a surface on a 3D graph of z
% figure(1)
% surf(z,'MeshStyle','none') 
% xlabel('x [Arb. Units]')
% ylabel('y [Arb. Units]')
% zlabel('z [Arb. Units')
% colormap('sky')
% title('Surf Graph of function f(x,y)')
% 
% % creates a 2D color coded graph of z
% figure(2)
% imagesc(z)
% xlabel('x [Arb. Units]')
% ylabel('y [Arb. Units]')
% c2 = colorbar; 
% c2.Label.String = 'z [Arb. Units]'; 
% set(gca,'Ydir','normal') %Get current axis and change direction of y-axis
% thanks lab 5
% colormap('sky') 
% title('Imagesc Graph of function f(x,y)')

% % Question B
% 
% % Define Aperture field
% 
% apl = 5000; % Size of the aperture field
% ap = zeros(apl); % Define actual aperture plane
% ap(1500:3500 , 2075:2250) = 1; % Defines the left slit
% ap(1500:3500 , 2750:2925) = 1; % Defines the right slit
% 
% % Plot the aperture field
% figure(1)
% imagesc(ap) % Plot image of the aperture field
% colormap gray % Set the color of the aperture field plot
% axis equal % Set the display scale of the axes
% axis([0 apl 0 apl]) % Set axes limits to size of aperture field

% Part 3

% array of angles
ang = linspace(0,35,5);

% will be used to chose angles
theta = 0;

% colors for later
co = ['r', 'g', 'b', 'c', 'm'];

% goes though all angles and calculates starting and end points for rays
% I have shifted everything up by 5 because I don't like the axis not being
% at 0 at the corner and also it's clearer to see the normal line
figure(1)
for  j = 1:5
    theta = ang(1,j);

    % outside of glass
        x = [-2.5 0];
        y = [5+2.5*tand(theta) 5];
        line(x,y,'color', co(j),'lineWidth',1)

    % inside of the glass
        x = [0 1];
        y = [5 5-tand(asind((sind(theta)))/1.57)];
         line(x,y,'color', co(j),'lineWidth',1)

    % outside of the glass
        x = [1 3.5];
        y = [5-tand(asind((sind(theta)))/1.57) 5-2.5*tand(theta)];
         line(x,y,'color', co(j),'lineWidth',1)

    % The x's define the starting and ending points of the x cordinates of
    % the line. The y's define the starting and ending points of the y
    % cordinates of the line.


% makes the defining lines   
yline(5,'LineStyle','--')
yline(0)
yline(10)
xline(-2.5)
xline(3.5)
xline(0)
xline(1)
end

% title
title("Snell's Law Demo Through BK7 Glass")

% axis labels
xlabel('cm')
ylabel('cm')

%CREATETEXTBOX(figure1)
%  FIGURE1:  annotation figure

%  Auto-generated by MATLAB on 21-Apr-2024 16:28:46

% Create textbox
annotation('textbox',...
    [0.6650625 0.67234219269103 0.150145833333333 0.225409413304698],...
    'String',{'Red = 0°','Green = 8.75°','Blue = 17.50°','Cyan = 26.25°','Megenta = 35°'},...
    'FontSize',15,...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);

% make graph full screen


















%Did you make it to the end?
% 
% n = input('Have you finished grading? Before you give an input make sure to SAVE EVERYTHING!!!! (Y/N) = (1/0): ');
% 
% if n == 1
%     disp('Yay you made it to the end!!!!')
%     pause(1.5)
%     logo 
%     pause (2.5)
%     quit
% elseif n == 0
%     disp("Time's ticking...")
%     datetime
% else 
%     disp("that doesn't a 1 or a 0...")
% end

% Bye bye! ;)

