function [pos] = straightPath( pos,dest,obs )
import utility.*  path.*

c=2;
pos=pos+c*cap(dest-pos);
pos=ceil(pos);
while (obs(pos(2),pos(1))==0)&&(~isReached(dest,pos,c*2))
pos=pos+c*cap(dest-pos);
pos=ceil(pos);   
end 
 
end
