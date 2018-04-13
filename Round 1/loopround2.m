while (~all_bricks_placed(green)&&~all_bricks_placed(red))

getColor();
oldColor=color; 
 
if ~brick_picked 
    bricks=getBricks(color);                           %Get Available Bricks Applyiing Andmask and color;
    getBot();
    p=findClosest(bricks,bot) ;                     %Closestt Brick algo   
    goto3(bricks(p,:));                               %exits as soon as color changes
    pickBrick;      
end

    getBox                   
    goto(box);    
    dropBrick;
end