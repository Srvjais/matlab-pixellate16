function [] = goto( destination )
global color oldColor;
 
 %destinaton is 2x1 array x,y
color=1;
oldColor=1;

while color==oldColor && ~isReached(destination);
    
    alignToA(destination);                 %face in the direction
    Arduino('w');
    %getColor();             
end


end
 
