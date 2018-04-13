function []=setMask()
global indicator bboxplan ;
global andMask;
                                       
bboxind=ceil(indicator.BoundingBox);
andMask(bboxind(2):bboxind(2)+bboxind(4),bboxind(1):bboxind(1)+bboxind(3))=0;  %Masks Indicator
andMask(bboxplan(2): bboxplan(2)+bboxplan(4),bboxplan(1):bboxplan(1)+bboxplan(3)-1)=0;  %mask plan
imtool(andMask);
end