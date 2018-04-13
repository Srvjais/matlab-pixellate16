function [] = goto2( destination )
import path.*
fprintf('\n\n Final Destination   %d,%d by Path:\n',destination);
global inImg bot
 
getBot();
obs=getObs(inImg,destination);
path=getPath2(bot,destination,obs);

path=trimPath(path);
path=smoothPath(path,obs)
c=size(path);
for i=c(1)-1                                 %Rapid Traverse
    %go(path(i,:),1)
end


%go(path(i+1,:),.5);                                 %slow
end
 
