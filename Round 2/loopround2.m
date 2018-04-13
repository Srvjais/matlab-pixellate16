while (~all_bricks_placed(green)&&~all_bricks_placed(red))

getColor();
oldColor=color; 
if ~brick_picked 
    bricks=getBricks(color);                            %Get Available Bricks Applyiing Andmask and color;
    if isempty(bricks)   
        bricksEmpty()
    else
        getBot();
        p=findClosest(bricks,bot) ;                         %Closestt Brick algo   
        goto3(bricks(p,:));                                 %exits as soon as color changes
        if color==oldColor 
            
            if numel(bricks)==numel(getBricks(color))
                continue
            end
        brick_picked=1;
        fprintf('Brick Picked\n');
        end
    end
end
    box=getBox() ;                
    goto3(box);    
    dropBrick;
end