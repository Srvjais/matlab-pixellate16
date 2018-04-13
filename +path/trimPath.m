function [ path ] = trimPath(path)
 
e=2;

new=size(path);
    
    i=1;
    while  new(1)>=i+2
        if abs(distance(path(i,:),path(i+1,:))+distance(path(i+1,:),path(i+2,:))-distance(path(i,:),path(i+2,:)))<e
            path(i+1,:)=[];
        else
            i=1+i;
        end
    new=size(path);   
    end  
end
 
