function [bricks] = getBricks(color)
import utility.*
global Green Red  all_bricks_placed   green  andMask 
global inImg;%getInImg(); 

if(color==green) 
    brickstmp=filtr(inImg,Green); 
else
    brickstmp=filtr(inImg,Red);  
end

brickstmp=bwareaopen(brickstmp,200);                            %clears Noise
%brickstmp=andMask&brickstmp;                                    %apply andMask
%imtool(brickstmp);
bricksprops=regionprops(brickstmp);                             %props
x=size(bricksprops);                                            %size is x

if(x(1)==0)                                                     %bricks placed
    all_bricks_placed(color)=1;
end

for i=1:x(1)                                                    
    bricks(i,:)=bricksprops(i).Centroid;                         %#ok<AGROW>
end

end
 