function [ path ] = aroundPath( pos,dest,obs,polarity )
import path.* utility.*
path=pos;
c=8;
s=size(obs);
newpos=pos;
while isReached(newpos,pos,5)
   pos= newpos;
wallVector=getWallVector(pos,obs,1);
if isempty(wallVector)||isnan(wallVector(1))
    wallVector=getWallVector(pos,obs,2);
    if isempty(wallVector)||isnan(wallVector(1))
        wallVector=getWallVector(pos,obs,3);
    end
end
pos=pos-wallVector*c*2*polarity;
pos=ceil(pos);
if pos(1)>s(2)||pos(2)>s(1)||pos(1)<1||pos(2)<1
    path=[];
end
path= [path;pos];  %#ok<AGROW>
newpos=straightPath(pos,dest,obs);
end


end

