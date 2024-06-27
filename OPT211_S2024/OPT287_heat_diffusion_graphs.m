
% x = symsum(((2/(m*pi))*((sin((pi*m)/4))-(sin((pi*m)/4)))*(cos((m*pi*j)/4)*exp(-1*j*((m*pi)/4)))),m,0,50);

t=1
% x = linspace(1,30,100);
sum = 0;
for m=1:50
    term = ((2 / (m * pi))*(sin(m * pi * x / 2)- sin(m * pi * x / 4)) .* cos(m * pi * x / 4) .* exp((-1*m*pi*t)/4));
    sum = sum + term;
end

plot(sum,t)

% hold on
% for t=0:5
%     subplot(3,3,t)
%     plot(sum,t)
% end
% hold off
