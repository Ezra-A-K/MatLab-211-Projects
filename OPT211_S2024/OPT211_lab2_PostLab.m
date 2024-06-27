%Ezra Alcon-Kirshman, OPT 211 lab 2, Post-Lab

x  = linspace(0,4*pi); %creates array from 0 to 14 with 1000 points
y1 = sin(x); 
y2 = cos(x);
y3 = tan(x);

plot(x,y1,x,y2,x,y3,'LineWidth', 2) %plots y1, y2, and y3 with x

title('Simple Trigonometric Functions')
xlabel('\phi[Radians]','fontweight','bold')
ylabel('[Arb.Units]','fontweight','bold')
legend('sin(\phi)','cos(\phi)','tan(\phi)','fontweight','bold','edgeColor',[1 1 1])
ylim([-2 2])
xlim([0 2*pi])

