% @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ % 

% @@@@ MegaPixel Final Program Build 0.6 @@@@ %     
    
    
        %to be done:
        %!!isBlocked( )         
        %~~design collision detection
           
% @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ % 

import utility.*

import processImg.*
setInImg()                                      %first crop  I
setRes;                                         %Hardcoded values+ global vars initial values
setLims();                                      %Sets R G B limiting values by corpping
processImg;                                     %Get Andmask ,boundingboxes ,plans of Red and Green color in order
                                

while (~all_bricks_placed(green)&&~all_bricks_placed(red))

getColor();
oldColor=color; 
 
if ~brick_picked 
    bricks=getBricks();                                   %Get Available Bricks Applyiing Andmask and color;
    getBot();
    n=findClosest(bricks,bot)                      %Closestt Brick algo   
    goto(bricks(n));                               %exits as soon as color changes
    pickBrick;      
end

    %getBox                   
    goto(box);    
    dropBrick;
end


%NOTES: 

 
%if scriptor function called once only it is setSomething otherwise it is getSomething

     
%all scripst in WNABP will skip if color change detected
    %except dropBrick which  will drop if picked and then exit
    %color change will probs be only detecected while goto()
    %all other scripts in WNABP will be assum to be quick
    %there will be reverse in dropBirck



%ERRORS:SOLUTION/REASON     !!!!!!

%matrix subscript error:white line due to cropping/wrong no of objects detcected :processImage
%Subscript indices must either be real positive integers or logicals floor problem: setBoundingBoxes
%Error using  & Matrix dimensions must agree : ceil/floor problem:setBoundingBoxes
