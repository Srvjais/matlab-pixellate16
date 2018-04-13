function [] = goto3( dest )
import path.*

global inImg bot color oldColor
 getColor();
if color==oldColor
    fprintf('\n\n Final dest   %d,%d by Path:\n',dest);
     getBot();
     dest=ceil(dest);
     obs=getObs(inImg,bot,dest);
try
     path=getPath3(bot,dest,obs);
catch
    path=[bot;dest];
end
     path=smoothPath1(path,obs);
     path=goodPath(path);

     line(path(:,1),path(:,2));
     c=size(path);
for i=2:c(1)                                %Rapid Traverse
      go(path(i,:),0.2)
end

end

end



 
