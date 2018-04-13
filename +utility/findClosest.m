function [cd] = findClosest(destinations,position)
import utility.*

x=size(destinations);
cd=1;       %closest destination number
for i=1:x(1)
    if(distance(destinations(i,:),position)<distance(destinations(cd,:),position))
       cd=i;
    end 
end
end

