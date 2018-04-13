getColor(); 
 
bricks=getBricks(color);                                   %Get Available Bricks Applyiing Andmask and color;
getBot();
n=findClosest(bricks,bot);                            %Closestt Brick algo   
go(bricks(n),0.3);                                      %exits as soon as color changes
        

