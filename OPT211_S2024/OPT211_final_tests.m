
% p1 = [-2.5 3];
% p2 = [0 3];
% line = (p1,p2)

% x = [-2.5 3];
% y = [0 3];
% q = [2 3];
% w = [4 3];
% line(x,y,'Color','red','LineStyle','--')
% line(2*x,3*y,'Color','green','LineStyle','--')
% line(q,w,'Color','blue','LineStyle','--')

% x = [0 10];
% y = [0 -10];
% line(x,y,'color','black')
% w = [5 -2.5];
% q = [5 3.5];
% line(w,q,'color','black')

% yline(5,'LineStyle','--')
% yline(0)
% yline(10)
% xline(-2.5)
% xline(3.5)
% xline(0)
% xline(1)

% x = [-2.5 0];
% y = [5 5];
% line(x,y,'color','red')
% 
% yline(5,'LineStyle','--')
% yline(0)
% yline(10)
% xline(-2.5)
% xline(3.5)
% xline(0)
% xline(1)

% theta = 3;
% 
%  z = [-2.5 0];
%  r = [5 5+2.5*tand(theta)];
%  line(z,r,'color','blue')

% x = asind(sind(5))

% theta = 5
% 
%  x = [0 1];
%         y = [5+2.5*tand(theta) 5+tand(asind((sin(theta))/1.57))];
%         line(x,y)




% %array of angles
% ang = linspace(0,35,5);
% 
% 
% for  theta = ang
% 
%         x = [-2.5 0];
%         y = [5 5+2.5*tand(theta)];
%         line(x,y)
% 
% 
%         x = [0 1];
%         y = [5+2.5*tand(theta) 5+tand(asind((sind(theta))/1.57))];
%         line(x,y)
% 
% 
%         x = [1 3.5];
%         y = [5+tand(asind((sind(theta))/1.57)) 5+2.5*tand(theta)];
%         line(x,y)
% 
% 
% yline(5,'LineStyle','--')
% yline(0)
% yline(10)
% xline(-2.5)
% xline(3.5)
% xline(0)
% xline(1)
% end

%array of angles
ang = linspace(0,35,5);

%will be used to chose angles
theta = 0;

%colors for later
co = ['r', 'g', 'b', 'c', 'm'];

%goes though all angles and calculates starting and end points for rays
for  j = 1:5
    theta = ang(1,j);
        x = [-2.5 0];
        y = [5+2.5*tand(theta) 5];
        line(x,y,'color', co(j),'lineWidth',1)
       

        x = [0 1];
        y = [5 5-tand(asind((sind(theta))/1.57))];
         line(x,y,'color', co(j),'lineWidth',1)
        

        x = [1 3.5];
        y = [5-tand(asind((sind(theta))/1.57)) 5-2.5*tand(theta)];
         line(x,y,'color', co(j),'lineWidth',1)
    
       
%makes the defining lines   
yline(5,'LineStyle','--')
yline(0)
yline(10)
xline(-2.5)
xline(3.5)
xline(0)
xline(1)
end







