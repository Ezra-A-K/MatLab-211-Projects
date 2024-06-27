function guassDistribution(m,s,np,b)

%Ezra Alcon-Kirshman, OPT 211 lab 2, gaussian distribution practice

x = s*randn(1,np)+m; % Generate normal (Gaussian) distribution in a discrete, 1D array

y = linspace(m-4.*s,m+4.*s,1000);

figure
hold on
histogram(x,b,'Normalization','pdf') %plot discrete normal distribution
plot(y,(1 ./ (s * sqrt(2 * pi))) * exp(-((y - m).^2) / (2 * s^2)),'LineWidth', 2) %plots y in guassian function
hold off
xlabel('Bin Size','fontweight','bold')
ylabel('number of points','fontweight','bold')
legend('Bins', 'Normal Curve', 'fontweight' , 'bold')
