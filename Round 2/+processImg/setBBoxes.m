function [] = setBBoxes()
import utility.* processImg.*
getInImg;
global bboxind centreind bboxarena bboxplan 
d=3000;                                                  %!!!!!!!!!!!!!!!!!!!!!!!!!!!!area constant
imbw=getImbw(); %stat of bw image
c=size(imbw);
for i=1:c(1)
    if (imbw(i).Area)>((distToPixel(50)*distToPixel(50))+d)
         bboxarena=ceil(imbw(i).BoundingBox);                               %for arena bbox
    elseif(imbw(i).Area)<((distToPixel(30)*distToPixel(30))+d)
         bboxind=ceil(imbw(i).BoundingBox);                                               %for indicator centre
         centreind=ceil(imbw(i).Centroid);
    elseif abs(imbw(i).Area-distToPixel(30)*distToPixel(50))<d
        bboxplan=ceil(imbw(i).BoundingBox);                                %for plan bbox
    end
end
end


 