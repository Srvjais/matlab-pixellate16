global inImage                                          %altered by getinImage
                                                        %used by
                                                        %setColorLimits,setBoundingBoxes,setPlanLabels,getColor(),getBot,getBricks
                                                        %maybe goto at some point but not now
global color oldColor       %#ok<NUSED>                 %atlered by getColor 
                                                        %Used by getBrick goto() pickBrick dropBrick
global indicator            %#ok<NUSED>                 %set by getImbw 
                                                        %used by getColor
global botvector            %#ok<NUSED>                 %altered by getBot used by alignTo


scr = serial('COM_PORT', 'BaudRate', 9600);
fopen(scr);

all_bricks_placed=[0,0];                                %altered by findBrick 
brick_picked=0;                                         %altered by pickBrick and dropBrick
boxNumber=[1,1];                                        %altered by dropBox and used by get
[m,n,s]=size(inImage);                                    %used by setBoundingBoxes
clearvars s