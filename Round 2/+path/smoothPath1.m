function [ path ] = smoothPath1( path ,obs)
 
import utility.* path.*

new=size(path); 
i=1;
    while  new(1)>=i+2
        if  isReached(straightPath( path(i,:),path(i+2,:),obs ),path(i+2,:),4)
            path(i+1,:)=[];
        else
            i=i+1;
        end
        
     
     new=size(path);
   
    end  
end
 

