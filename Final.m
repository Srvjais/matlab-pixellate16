% @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ % 

% @@@@ MegaPixel Final Program Build 0.6 @@@@ %     
    
    
        %to be done:
        %!!isBlocked( )         
        %~~design collision detection
           
% @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ % 


setInImage()                                      %first crop  I

setResources;                                      %Hardcoded values+ global vars initial values
setColorLimitA();                                   %Sets R G B limiting values by corpping
processImage;                                      %Get Andmask ,boundingboxes ,plans of Red and Green color in order
                                

while (~all_bricks_placed(green)&&~all_bricks_placed(red))

getColor();
oldColor=color; 
 
if ~brick_picked 
    getBricks();                                   %Get Available Bricks Applyiing Andmask and color;
    getBotA();
    n=findClosest(bricks,bot)                      %Closestt Brick algo   
    goto(bricks(n));                               %exits as soon as color changes
    pickBrick;      
end

    %getBox                   
    goto(box);    
    dropBrick;
end


%NOTES: 

%accuracy>90% 
    %however remember this causes large deviation
    %do something to increase accuracy

%if scriptor function called once only it is setSomething otherwise it is getSomething

%!!!!in getBot botA/B can be detected by the foll algo
        %both be blu & botB be Triangle &botA be square
        %take blu component of inImage
        %im2bw
        %lable
        %find the triangle
    %Why?:the bw conversion in getImbw takes 92.4%(22.69sec) of initial processing time
    %compare a dummy im2bw takes only 7.3%(1.78sec)
    
%all scripst in WNABP will skip if color change detected
    %except dropBrick which  will drop if picked and then exit
    %color change will probs be only detecected while goto()
    %all other scripts in WNABP will be assum to be quick
    %there will be reverse in dropBirck



%ERRORS:SOLUTION/REASON     !!!!!!

%matrix subscript error:white line due to cropping/wrong no of objects detcected :processImage
%Subscript indices must either be real positive integers or logicals floor problem: setBoundingBoxes
%Error using  & Matrix dimensions must agree : ceil/floor problem:setBoundingBoxes
