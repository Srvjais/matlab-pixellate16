
global botC1 botC2 Red Green Black
Gtmp=imcrop(inImage);
Rtmp=imcrop(inImage);
BLtmp=imcrop(inImage);
c=10;                                                 %colour limit approx constant

%for red colour

Red(Max,red)=max(max(Rtmp(:,:,1)))+c; 
Red(Max,green)=max(max(Rtmp(:,:,2)))+c;  
Red(Max,blue)=max(max(Rtmp(:,:,3)))+c; 
Red(Min,red)=min(min(Rtmp(:,:,1)))-c;
Red(Min,green)=min(min(Rtmp(:,:,2)))-c;
Red(Min,blue)=min(min(Rtmp(:,:,3)))-c;

%for green colour

Green(Max,red)=max(max(Gtmp(:,:,1)))+c;
Green(Max,green)=max(max(Gtmp(:,:,2)))+c;
Green(Max,blue)=max(max(Gtmp(:,:,3)))+c;
Green(Min,red)=min(min(Gtmp(:,:,1)))-c;
Green(Min,green)=min(min(Gtmp(:,:,2)))-c;
Green(Min,blue)=min(min(Gtmp(:,:,3)))-c;

%for black colour
Black(Max,red)=max(max(BLtmp(:,:,1)))+c;
Black(Max,green)=max(max(BLtmp(:,:,2)))+c;
Black(Max,blue)=max(max(BLtmp(:,:,3)))+c;
%Black(Min,red)=min(min(BLtmp(:,:,1)))+c;
%Black(Min,green)=min(min(BLtmp(:,:,2)))+c;
%Black(Min,blue)=min(min(BLtmp(:,:,3)))+c; 
Black(Min,red)=0;
Black(Min,green)=0;
Black(Min,blue)=0;
%for bot

botcol1=imcrop(inImage);
botcol2=imcrop(inImage);
%for bot colour 1
botC1(Max,red)=max(max(botcol1(:,:,1)))+c; 
botC1(Min,red)=min(min(botcol1(:,:,1)))-c; 
botC1(Max,green)=max(max(botcol1(:,:,2)))+c; 
botC1(Min,green)=min(min(botcol1(:,:,2)))-c;
botC1(Max,blue)=max(max(botcol1(:,:,3)))+c; 
botC1(Min,blue)=min(min(botcol1(:,:,3)))-c; 
%for bot colour 2
botC2(Max,red)=max(max(botcol2(:,:,1)))+c; 
botC2(Min,red)=min(min(botcol2(:,:,1)))-c; 
botC2(Max,green)=max(max(botcol2(:,:,2)))+c; 
botC2(Min,green)=min(min(botcol2(:,:,2)))-c;
botC2(Max,blue)=max(max(botcol2(:,:,3)))+c; 
botC2(Min,blue)=min(min(botcol2(:,:,3)))-c; 



clearvars Gtmp Rtmp Btmp botcol1 botcol2 c;