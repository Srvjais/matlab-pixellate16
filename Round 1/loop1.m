getColor(); 
 
bricks=getBricks(color);                                   %Get Available Bricks Applyiing Andmask and color;
getBot();
p=findClosest(bricks,bot);                            %Closestt Brick algo   
 
goto3(bricks(p,:));                                   %exits as soon as color changes