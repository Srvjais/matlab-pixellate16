function []=setMask()
global indicator bboxplan m n;

global andMask;

andMask=ones(m,n);                      %Applied over inImage Contains censors for plan indicator and placed_bricks
                                        %Altered By DropBrick
bboxind=ceil(indicator.BoundingBox);
andMask(bboxind(2):bboxind(2)+bboxind(4),bboxind(1):bboxind(1)+bboxind(3))=0;  %Masks Indicator
andMask(bboxplan(2): bboxplan(2)+bboxplan(4),bboxplan(1):bboxplan(1)+bboxplan(3)-1)=0;  %mask plan
imtool(andMask);
end