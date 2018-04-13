function [ path ] = getPath2( pos,dest,obs) 
import utility.* path.*

plot([0,0],[500,500],'--s','MarkerSize',10,'LineWidth',1);
hold all
c=3;
path=pos;
   
while (1) 
    
    pos=straightPath( pos,dest,obs );
    if isReached(dest,pos,c*2)  ;   
        path= [path;pos]; %#ok<AGROW>   
        return;    
    end
    try
    p1=aroundPath( pos,dest,obs,+1);
    catch
    p1=[];
    end
    
    p2=aroundPath( pos,dest,obs,-1);
    if numel(p1)>numel(p2)||isempty(p1)
    path=[path;p2];%#ok<AGROW>
    else
    path=[path;p1];%#ok<AGROW>
    end
        
    pos=path(end,:);
    plot(path(:,1),path(:,2),'--s','MarkerSize',10,'LineWidth',1)
    hold all
end

    
end

    
 
 

