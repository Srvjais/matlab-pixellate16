function [ obs ] = getObs( img,pos,dest ) 
import utility.*  
global Red Green andMask 
d=30;
      img=censor(img,pos,d);
      img=censor(img,dest,d);
      obs =filtr(img,Green)|filtr(img,Red);
      obs=obs|(1-andMask);
      obs=bwareaopen(obs,500);
      
      tmp=strel('square',120);
      obs=imdilate(obs,tmp);
      
      %tmp=strel('square',10);
      %obs=imerode(obs,tmp);
      
      obs=censor(obs,dest,d*1.5);
      obs=censor(obs,pos,d);
end

