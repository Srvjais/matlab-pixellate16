function [   ] = go( dest , speed)
import utility.*
fprintf('\nGoing to %d,%d at speed %d \n',dest,speed);
    

global bot color oldColor;
getBot();
while color==oldColor&&~isReached(dest,bot,140);
    
    align(dest);                 %face in the direction
    align(dest);   
    align(dest);   
    Arduino('w',speed);         
    getColor();
end

while color==oldColor&&~isReached(dest,bot,70);
    
    align(dest);                 %face in the direction
    align(dest);   
    align(dest);   
    Arduino('w',speed/2);   
    getColor();
end
Arduino('w',.1);
end

