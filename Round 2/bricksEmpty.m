function [   ] = bricksEmpty(   )
 
global all_bricks_placed oldColor color
    all_bricks_placed(color)=1;
    Arduino('3',0);
    while color== oldColor
        fprintf('\nnobrix')
        getColor()
        pause(.3) 
    end
    Arduino('4',0);

end

