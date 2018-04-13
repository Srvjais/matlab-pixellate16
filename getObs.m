function [ obs ] = getObs( img,dest ) 
import utility.*  
global Red Green  
obs =filtr(img,Green)|filtr(img,Red);
obs(dest(2)-30:dest(2)+30,dest(1)-30:dest(1)+30)=0;

tmp=strel('diamond',60);
obs=imdilate(obs,tmp);
imtool(obs)


end

