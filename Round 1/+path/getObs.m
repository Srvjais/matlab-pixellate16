function [ obs ] = getObs( img,pos,dest ) 
import utility.*  
global Red Green  
d=30;
try
      imtool(img);
      img(dest(2)-d:dest(2)+d,dest(1)-d:dest(1)+d,:)=0;
      obs =filtr(img,Green)|filtr(img,Red);


      tmp=strel('square',110);
      obs=imdilate(obs,tmp);
imtool(obs)
      obs(dest(2)-d:dest(2)+d,dest(1)-d:dest(1)+d)=0;
      obs(pos(2)-d:pos(2)+d,pos(1)-d:pos(1)+d)=0;
catch
     
end
 imtool(obs);
end

