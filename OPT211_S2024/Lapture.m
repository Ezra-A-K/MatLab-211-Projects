ap = zeros(500);


%L
ap(100:450, 20:40) = 1;
ap(430:450, 40:460) = 1;

%A
ap(100:420, 50:70) = 1;
ap(100:120, 70:110) = 1;
ap(100:420, 110:130) = 1;
ap(235:255, 70:110) = 1;

%S
ap(400:420, 140:180) = 1;
ap(100:420, 180:200) = 1;
ap(100:120, 200:240) = 1;

%E
ap(100:420, 250:270) = 1;
ap(100:120, 270:310) = 1;
ap(235:255, 270:310) = 1;
ap(400:420, 270:310) = 1;

%R
ap(100:420, 320:340) = 1;
ap(100:120, 340:450) = 1;
ap(120:235, 430:450) = 1;
ap(235:255, 320:450) = 1;
ap(300:420, 430:450) = 1;
ap(255:320, 410:430) = 1;


w=zeros(500,2250);
z=zeros(2250,5000);
ap=[w ap w];
ap=[z;ap;z];
% 
% 
 imagesc(ap)
% 
% DP = fftshift(fft2(ap));
% imagesc(abs(DP))
