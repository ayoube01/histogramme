close all 
clear all
img=imread('image.jpg');

for i=1:1000
    img(i,:)=200;
    
end 
figure;imshow(img);