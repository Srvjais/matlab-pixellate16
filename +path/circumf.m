function [ pt ] = circumf( pos,theta,mf ) 
a=12*mf;
    pt(1)=ceil(pos(1)+a*cos(theta));
    pt(2)=ceil(pos(2)+a*sin(theta));



end

