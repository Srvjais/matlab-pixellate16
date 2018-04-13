function [bricks] = getBricks(color)
import utility.*
global Green Red green andMask brickstmp  
global inImg;
getInImg(); 

if(color==green) 
    brickstmp=filtr(inImg,Green); 
else
    brickstmp=filtr(inImg,Red);  
end

brickstmp=bwareaopen(brickstmp,300);                            %clears Noise
brickstmp=andMask&brickstmp;                                    %apply andMask
%imtool(brickstmp);
bricksprops=regionprops(brickstmp);                             %props
x=size(bricksprops);                                            %size is x

if(x(1)==0)                                                     %bricks placed
   
   bricks=[];
   return;
end

for i=1:x(1)                                                    
    bricks(i,:)=bricksprops(i).Centroid;                         %#ok<AGROW>
end

end
 