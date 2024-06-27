%Ezra A-K 
%OPT 211
%loop test

% %loop 5 times 
% for ijk=1:5
%     x=ijk %display index value of ijk as x
%     pause(1) %wait 1 second
% end

% %loop 5 times 
% for ijk=1:5
%     pause(1.5) %wait 1.5 seconds
%     x=ijk %display index value of ijk as x
%     pause(1) %wait 1 second
%     for m=1:3 % For each time through loop 1, loop through the nested loop 3 times
%         y=m % Display the index of the inner loop as y
%         pause(.5) % wait 0.5 seconds
%     end
% end

% xx=ones(1,10) % Define an array of ones and display it
% 
% for ijk=1:10 % Select the ijk'th entry of the array
%     xx(ijk)= ijk % Replace the ijk'th entry of the array with the index, ijk and displays xx each time
% end

% n=10;
% yy=zeros(n,n) % Define and show an nxn "empty" matrix of zeros
% 
% for ijk=1:n % Select each individual row of the matrix
%     for lmn=1:n  % loop through from 1 to n
%     yy(ijk,lmn)=n*(ijk-1)+lmn; % Select an individual column from the current row and change the value of this data point
%     end
% end
% yy

% n=10; % Number of points in the variable array
% e=15; % Endpoint of variable array
% t=10; % Number of functions in family to produce
% xg=linspace(0,e,n); % Define independent variable
% figure % Open a figure window
% hold on % Allow for multiple plots within that figure window
% 
% for gg=1:t  % Loop through from 1 to t
%     yg(gg,:)=xg*gg; % Calculate member of function family
%     plot(xg,yg(gg,:)) 
% end
% %plot(xg,yg') % Plots entire family of functions from a single command
% legend('x','2x','3x','4x','5x','6x','7x','8x','9x','10x','Location','northwest')  % Creates figure legend
% xlabel('x_g')
% ylabel('y_g')
% title('y_g vs. x_g')
% hold off % Ends open plotting on the current figure window
% yg % Displays the answer matrix so we can see how Matlab generated it and what it looks like

%post-lab


% bbspec = textread('OPT_lab4_text.txt');
% 
% x = bbspec(:,1);
% y = bbspec(:,2);
% 
% plot(y,x)
% title('Wavelength vs. Intensity')
% xlabel('wavelength [um]')
% ylabel('intensity [arb. units]')
% xlim([0 1.6]);

n=11;

[BBFilename, BBText] = uigetfile('*.xlsx'); % Opens up a window and allows you to select a file
[BBD, BBT]= xlsread([BBText BBFilename]); % Reads the file you selected

% x=BBD(:,1);
% y=BBD(:,AAH);

hold on
for AAH=2:n
    subplot(4,3,(AAH))
    plot(BBD(:,1),BBD(:,AAH))
    %title(num2str(AAH-1))
end
subplot(4,3,2);
title('Universe')
xlim([35 45])
subplot(4,3,3);
title('Liquid Nitrogen')
subplot(4,3,4);
title('Room Temp')
subplot(4,3,5);
title('Body Temp')
subplot(4,3,6);
title('Candle Flame')
xlim([0 15])
subplot(4,3,7);
title('Incandescent Light Bulb Filament')
xlim([0 15])
subplot(4,3,8);
title('Red Supergiant Star')
xlim([0,15])
subplot(4,3,9);
title('The Sun')
xlim([0 5])
subplot(4,3,10);
title('Lightning')
xlim([0 1.5])
subplot(4,3,11);
title('Mature Neutron Star')
xlim([0 0.5])
hold off






