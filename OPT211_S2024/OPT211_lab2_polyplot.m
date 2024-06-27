%Ezra Alcon-Kirshman, OPT 211 lab 2, plot simple polynomial functions
x=linspace(0, 10, 1000);
y4 = .008*x.^5-.224*x.^4+2.344*x.^3-11.152*x.^2+22.848*x-13.824;
y1 = x;
y2 = .75*x.^2-7.5*x+12;
y3=.08*x.^3-1.2*x.^2+5.68*x-8.4;
figure(1)
hold on
plot(x,y1)
plot(x,y2)
plot(x,y3)
plot(x,y4)
hold off
figure(2)
hold on
plot(x,0*x,'-k')
plot(x,y1)
plot(x,y2,'--')
plot(x,y3,'-')
plot(x,y4,':')
hold off
