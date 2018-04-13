function [ stat ] = getImbw(   )
import utility.*

global inImg  Black  

imbw=~filtr(inImg ,Black); 
imbw=bwareaopen(imbw,ceil(distToPixel(30)^2-700));

imtool(imbw);
stat=regionprops(imbw);

end

