function lut = LUT(seuil_bas,seuil_haut)
lut=zeros(256,1);
for i=1:256
  if ((i<seuil_bas ) || ( i> seuil_haut))
      lut(i)=0;
  else 
      lut(i)=255;
end
end
end