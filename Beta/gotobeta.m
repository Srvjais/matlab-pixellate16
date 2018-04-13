function [] = gotobeta( destination )
%Goto implementd using Collision detection

global color oldColor aroundPoints;

while color==oldColor && ~isReached(destination);
    
    if(isBlocked)                         %collision detected here
    getAroundPoints();
        for i=1:4
            goto(aroundPoints(i));
        end
    else
        
    getBot;
    alignTo(destination);                 %face in the direction
    Arduino('f');
    getColor();   
    
    end
end
end
 
