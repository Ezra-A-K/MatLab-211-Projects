%OPT211 Final
%Ezra Alcon-Kirshman
%part2 
%double slit aperture

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