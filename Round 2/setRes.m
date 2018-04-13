import path.* utility.* processImg.*
global inImg I vid scr                                     %#ok<NUSED> %altered by getinIm
global Red Green                                                                              %#ok<NUSED>
global color oldColor       %#ok<NUSED>                 %atlered by getColor                                                  
global botvector bot        %#ok<NUSED>                 %altered by getBot  
global bboxind centreind bboxarena bboxplan plans %#ok<NUSED>
global Max Min
Max=1; Min=2;
global brickstmp     all_bricks_placed     brick_picked %#ok<NUSED>
global green red blue
green=2;red=1;blue=3;



 all_bricks_placed=[0,0];                                %altered by findBrick 
brick_picked=0;                                         %altered by pickBrick and dropBrick

global boxNumber
boxNumber=[1,1];                                        %altered by dropBox 

global m n
[m,n,tmp]=size(inImg);                                  %used by setBoundingBoxes
clearvars tmp
 
