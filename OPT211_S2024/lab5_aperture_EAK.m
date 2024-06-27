
function lab5_aperture_EAK

%OPT211 Lab 5
%Ezra Alcon-Kirshman
%aperture 

% Define Aperture field
apl=5000; % Size of the aperture field
ap=zeros(apl); % Define actual aperture plane

% Define square aperture
sql=2000; % Define square length
% ap(round(1+apl/2-sql/2):round(1+apl/2+sql/2),round(1+apl/2-sql/2):round(1+apl/2+sql/2))=1;
for j = round(1+apl/2-sql/2):round(1+apl/2+sql/2)
    for m = round(1+apl/2-sql/2):round(1+apl/2+sql/2)
        ap(j,m)=1;
    end
end

% Plot the aperture field
figure
imagesc(ap) % Plot image of the aperture field
colormap gray % Set the color of the aperture field plot
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field

