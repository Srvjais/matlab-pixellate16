function [ img ] = censor( img,pos,d )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[y,x,h]=size(img);


for i=1:x
    for j=1:y
        if abs(i-pos(1))<d && abs(j-pos(2))<d
            img(j,i,:)=0;
        end
    end
end
            

end

