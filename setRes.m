global inImg                                            %altered by getinIm
                                                                                                
global color oldColor       %#ok<NUSED>                 %atlered by getColor 
                                                         
global botvector bot        %#ok<NUSED>                 %altered by getBot  

global Max Min
Max=1; Min=2;

global green red blue
green=2;red=1;blue=3;

global scr
scr = serial('COM3', 'BaudRate', 9600);
%fopen(scr);

all_bricks_placed=[0,0];                                %altered by findBrick 
brick_picked=0;                                         %altered by pickBrick and dropBrick

global boxNumber
boxNumber=[1,1];                                        %altered by dropBox 

global m n
[m,n,tmp]=size(inImg);                                  %used by setBoundingBoxes
clearvars tmp

global andMask;
andMask=ones(m,n);                      %Applied over inImg Contains censors for plan indicator and placed_bricks
                                        %Altered By DropBrick