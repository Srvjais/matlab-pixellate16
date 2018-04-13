function [] = setBoundingBoxes()

%Get Imbw ,bboxarena , bboxplan ,indicator,

global indicator bboxarena bboxplan Black
global inImage                                                              %converts to bw 
imbw=~filtr(inImage ,Black);
 
disctmp=strel('disk',2);
imbw=imdilate(imbw,disctmp);
imbw=imerode(imbw,disctmp); 
imbw=bwareaopen(imbw,(distToPixel(30)^2)-700);

 
imtool(imbw);
stat=regionprops(imbw);

for i=1:3
    if (stat(i).Area)>((distToPixel(50)*distToPixel(50))+500)
         bboxarena=ceil(stat(i).BoundingBox);                               %for arena bbox
    elseif(stat(i).Area)<((distToPixel(30)*distToPixel(30))+600)
         indicator=(stat(i));                                               %for indicator centre
    else
         bboxplan=ceil(stat(i).BoundingBox);                                %for plan bbox
    end
end
end


 