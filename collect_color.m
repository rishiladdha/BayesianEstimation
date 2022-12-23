function [color] = collect_color(img)

% webcamlist
% cam = webcam(pi);
% for i=1:10
%     img = snapshot(cam);
% end
I = img;

% figure
% imshow(I)

red = I(:,:,1);
green = I(:,:,2);
blue = I(:,:,3);
sred = size(red);
sgreen = size(green);
sblue= size(blue);

ravg = sum(sum(red))/(sred(1)*sred(2))
gavg = sum(sum(green))/(sgreen(1)*sgreen(2))
bavg = sum(sum(blue))/(sblue(1)*sblue(2))

if (ravg>gavg && ravg>bavg && ravg>145)
    disp("red")
    color = 1
elseif (gavg>0 && gavg<145) && (ravg>0 && ravg<145) && (bavg>0 && bavg<145)
    disp("black")
    color = 0
else
    color = 2 %blue
end

