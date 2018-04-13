%function[]=setColorLimit()
global inImage Max Min red green
global Red Blue Green Black
 

c=10;
Gtmp=imcrop(inImage);
Rtmp=imcrop(inImage);
Btmp=imcrop(inImage);
BLtmp=imcrop(inImage);


Red(Max,red)=max(max(Rtmp(:,:,1)))+c; 
Red(Min,red)=min(min(Rtmp(:,:,1)))-c;

Green(Max,green)=max(max(Gtmp(:,:,2)))+c;
Green(Min,green)=min(min(Gtmp(:,:,2)))-c;

Blue(Max,blue)=max(max(Btmp(:,:,3)))+c; 
Blue(Min,blue)=min(min(Btmp(:,:,3)))-c;

Black(Max,red)=max(max(BLtmp(:,:,1)))+c;
Black(Max,green)=max(max(BLtmp(:,:,2)))+c;
Black(Max,blue)=max(max(BLtmp(:,:,3)))+c;

%end