function [ stat ] = getImbw(   )
import utility.*

global inImg  Black  

imbw=~filtr(inImg ,Black); 
disctmp=strel('disk',5);                        %!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
imbw=imdilate(imbw,disctmp);
imbw=imerode(imbw,disctmp);
imbw=bwareaopen(imbw,ceil(distToPixel(30)^2-1000));

imtool(imbw);
stat=regionprops(imbw);

end

