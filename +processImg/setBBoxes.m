function [] = setBBoxes()
import utility.* processImg.*

global bboxind centreind bboxarena bboxplan 

imbw=getImbw(); %stat of bw image
c=size(imbw);
for i=1:c(1)
    if (imbw(i).Area)>((distToPixel(50)*distToPixel(50))+500)
         bboxarena=ceil(imbw(i).BoundingBox);                               %for arena bbox
    elseif(imbw(i).Area)<((distToPixel(30)*distToPixel(30))+500)
         bboxind=(imbw(i).BoundingBox);                                               %for indicator centre
         centreind=imbw(i).Centroid;
    elseif abs(imbw(i).Area-distToPixel(30)*distToPixel(50))<500
        bboxplan=ceil(imbw(i).BoundingBox);                                %for plan bbox
    end
end
end


 