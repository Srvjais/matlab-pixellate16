function [  ] = getColor()
global green red blue Max Min Green Red centreind
global  inImg;%getInImg();
global color 

if (...
    inImg(centreind(2),centreind(1),1)<Green(Max,red)&&(inImg(centreind(2),centreind(1),1)>Green(Min,red))&&...    
    inImg(centreind(2),centreind(1),2)<Green(Max,green)&&(inImg(centreind(2),centreind(1),2)>Green(Min,green))&&...
    inImg(centreind(2),centreind(1),3)<Green(Max,blue)&&(inImg(centreind(2),centreind(1),3)>Green(Min,blue))...
    )
    color=green;                                                               
elseif (...
    inImg(centreind(2),centreind(1),1)<Red(Max,red)&&(inImg(centreind(2),centreind(1),1)>Red(Min,red))&&...    
    inImg(centreind(2),centreind(1),2)<Red(Max,green)&&(inImg(centreind(2),centreind(1),2)>Red(Min,green))&&...
    inImg(centreind(2),centreind(1),3)<Red(Max,blue)&&(inImg(centreind(2),centreind(1),3)>Red(Min,blue))...
    )
    color=red; 
end