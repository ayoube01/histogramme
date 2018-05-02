####
img=imread('femme.pgm');
     lut=LUT(100,150);
     
for i=1:256
  for j=1:256
      
      img(i,j)=lut(img(i,j)+1);
  end
    
end
imshow(img)
