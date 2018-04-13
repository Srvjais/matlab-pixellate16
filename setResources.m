global logg                 %#ok<NUSED>

global inImage                                          %altered by getinImage
                                                        %used by
                                                        %setColorLimits,setBoundingBoxes,setPlanLabels,getColor(),getBot,getBricks
                                                        %maybe goto at some point but not now
global color oldColor       %#ok<NUSED>                 %atlered by getColor 
                                                        %Used by getBrick goto() pickBrick dropBrick
global indicator            %#ok<NUSED>                 %set by getImbw 
                                                        %used by getColor
global botvector bot        %#ok<NUSED>                 %altered by getBot used by alignTo

global Max Min
Max=1; Min=2;

global green red blue
green=2;red=1;blue=3;

global scr
scr = serial('COM4', 'BaudRate', 9600);
fopen(scr);

x=5;
all_bricks_placed=[0,0];                                %altered by findBrick 
brick_picked=0;                                         %altered by pickBrick and dropBrick

global boxNumber
boxNumber=[1,1];                                        %altered by dropBox and used by get

global m n
[m,n,tmp]=size(inImage);                                %used by setBoundingBoxes
clearvars tmp