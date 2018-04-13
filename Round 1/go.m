function [   ] = go( destination , speed)
import utility.*
fprintf('\nGoing to %d,%d at speed %d \n',destination,speed);
    

global bot color oldColor;
getBot();
while color==oldColor&&~isReached(destination,bot,80);
    
    align(destination);                 %face in the direction
    align(destination);   
    align(destination);   
    Arduino('w',speed);         
    getColor();
end

while color==oldColor&&~isReached(destination,bot,40);
    
    align(destination);                 %face in the direction
    align(destination);   
    align(destination);   
    Arduino('w',speed/3);   
    getColor();
end

end

