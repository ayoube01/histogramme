function lut = LUT_part(seuil_bas,seuil_haut,alpha,beta)
for i=1:256
 for j=1:256
    if(i>seuil_bas)|(i<seuil_haut)
   lut(i)=(i+1)*alpha+beta;
    elseif (i<seuil_bas)
        lut(i)=0;
    elseif (i>seuil_haut)
        lut(i)=255;
end
    
 end
end