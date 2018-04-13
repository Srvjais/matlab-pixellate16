function [  ] = getBotA() 

global  botC1 botC2
global inImage 
getInImage()

global bot botvector

imbot1= filtr(inImage,botC1);
         

imbot2= filtr(inImage,botC2);
   imbot1=bwareaopen(imbot1,5);
   imbot2=bwareaopen(imbot2,5);
  %imtool(imbot1)
   % imtool(imbot1)
   [L1]=bwlabel(imbot1);
   [L2]=bwlabel(imbot2);
   stat1=regionprops(L1);
   stat2=regionprops(L2);

cenbot2=stat1.Centroid;
cenbot1=stat2.Centroid;

bot=(cenbot1+cenbot2)/2;
botvector=cenbot2-cenbot1;
botvector=cap(botvector);

end
 
