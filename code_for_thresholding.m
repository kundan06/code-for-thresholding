% code for thresholding
clear all;
a=imread('cameraman.tif');
[rows,columns]=size(a);
threshold=127.5;
for i=1:rows
    for j=1:columns
        if a(i,j)>threshold
            b(i,j)=255;
        else
            b(i,j)=0;
        end    
    end
end    
figure;
subplot(1,2,1);
imshow(a);
title('Original image');
subplot(1,2,2);
imshow(b);
title('thresholding');
figure;
x=[0,threshold,threshold+0.000001,255];
y=[0,0,255,255];
% subplot(,2,3)
plot(x,y);
title('thresholding function');
xlabel('Intensity value');
ylabel('Output Intensity value');

axis([0,260,0,260]);