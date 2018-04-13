function [ ] = setPlans()
global bboxplan bboxarena Red Green 
global  inImage 

global plans


plantmp=imcrop(inImage,[bboxplan(1), bboxplan(2), bboxplan(1)+bboxplan(3), bboxplan(2)+bboxplan(4)]);
imtool(plantmp);

plan(:,:)=   filtr(plantmp,Red);
planRedProps=regionprops(bwareaopen(plan,200));         %clears Noise,gets Props
imtool(plan)
plan(:,:)=   filtr(plantmp,Green);     
planGreenProps=regionprops(bwareaopen(plan,200));       %clears Noise,gets Props
imtool(plan)
   
        
r=numel(planRedProps);
for i=1:r
    plansRed(i,:)=planRedProps(i).Centroid;                     %#ok<*AGROW>
end
for i=1:r                                                       %#ok<*SAGROW>
    j=i-1+findClosest(plansRed(i:end,:),bboxplan(3:4)/2);
    tmp=plansRed(j,:);
    plansRed(j,:)=plansRed(i,:);
    plansRed(i,:)= tmp;  
end
for i=1:r
    plansRed(i,:)=plansRed(i,:).*(bboxarena(3:4)./bboxplan(3:4))+bboxarena(1:2);
end


g=numel(planGreenProps);
for i=1:g
    plansGreen(i,:)=planGreenProps(i).Centroid; 
end
for i=1:g
    j=i-1+findClosest(plansGreen(i:end,:),bboxplan(3:4)/2);
    tmp=plansGreen(j,:);
    plansGreen(j,:)=plansGreen(i,:);
    plansGreen(i,:)= tmp; 
end
 for i=1:g
  plansGreen(i,:)=plansGreen(i,:).*(bboxarena(3:4)./bboxplan(3:4))+bboxarena(1:2);
 end
 
 plans={plansRed,plansGreen} ;
end