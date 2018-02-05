img=imread('femme.pgm')
histo=zeros(256,1);
for i=1:256
    for j=1:256
        histo(img(i,j)+1)=histo(img(i,j)+1)+1;
    end
end
%bar(histo)
histo_cumule=zeros(256,1);
histo_cumule(1)=histo(1);
for i=2:256
    histo_cumule(i)=histo(i)+histo_cumule(i-1);
end
bar(histo_cumule);
i=1
N=25/1000*256*256;
while(histo_cumule(i)<=N)
   seuil_bas=i;
    i=i+1;
end
M=25/1000*256*256;
teste=zeros(256,1);
for i=1:256
    teste(i)=histo_cumule(256)-histo_cumule(i);
end
i=1
seuil_haut=1;
while(teste(i)>M)
   seuil_haut=i;
    i=i+1;
end
alpha=255/(seuil_haut-seuil_bas);
beta=alpha*seuil_bas;


         

%for i=1:256
% for j=1:256
 %   if(img(i,j)>seuil_bas)|(img(i,j)<seuil_haut)
  % img(i,j)=img(i,j)*alpha+beta;
   % elseif (img(i,j)<seuil_bas)
    %    img(i,j)=0;
    %elseif (img(i,j)>seuil_haut)
     %   img(i,j)=255;
%end
    
 %end
%end
figure(1);

imshow(img)
%figure(1);
%imshow('femme.pgm')
lut=LUT_part(seuil_bas,seuil_haut,alpha,beta)
         
for i=1:256
  for j=1:256
      
      img(i,j)=lut(img(i,j)+1);
  end
    
end
figure(2);

imshow(img)