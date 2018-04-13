function [  ] = getColor()
global green red blue Max Min Green centreind
global  inImage;
getInImage();

global color

centreind=ceil(indicator.Centroid) ;
if (...
    inImage(centreind(1),centreind(2),1)<Green(Max,red)&&(inImage(centreind(1),centreind(2),1)>Green(Min,red))&&...    
    inImage(centreind(1),centreind(2),2)<Green(Max,green)&&(inImage(centreind(1),centreind(2),2)>Green(Min,green))&&...
    inImage(centreind(1),centreind(2),3)<Green(Max,blue)&&(inImage(centreind(1),centreind(2),3)>Green(Min,blue))...
    )
    color=green;                                                               
else 
    color=red;                             
%Arduino(color);
end