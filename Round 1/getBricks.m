function [bricks] = getBricks(color)
import utility.*
global Green Red green andMask brickstmp  all_bricks_placed oldColor
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
    all_bricks_placed(color)=1;
    Arduino('3',0);
    while color== oldColor
        fprintf('nobrix')
        getColor()
        pause(.3) 
    end
    Arduino('4',0);
end

for i=1:x(1)                                                    
    bricks(i,:)=bricksprops(i).Centroid;                         %#ok<AGROW>
end

end
 