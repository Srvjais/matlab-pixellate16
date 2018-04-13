function [] = goto3( destination )
import path.*
fprintf('\n\n Final Destination   %d,%d by Path:\n',destination);
global inImg bot color oldColor
if color==oldColor
     getColor();
     getBot();

     destination=ceil(destination);
     obs=getObs(inImg,bot,destination);

     path=getPath3(bot,destination,obs);

     path=smoothPath1(path,obs);
     path=trimPath(path);

     line(path(:,2),path(:,1));
     c=size(path);
for i=1:c(1)                                %Rapid Traverse
      go(path(i,:),0.2)
end

end

end



 
