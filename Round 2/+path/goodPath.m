function [ path ] = goodPath(path)
 
e=50;

new=size(path);
    
    i=1;
    while  new(1)>=i+2
        if distance(path(i,:),path(i+1,:))<e
            path(i,:)=path(i+1,:);
            path(i+1,:)=[];
        else
            i=1+i;
        end
    new=size(path);   
    end  
end