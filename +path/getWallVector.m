function [  wall ] = getWallVector( pos,obs,mf ) 
import utility.* path.*
flag=0;
theta=0;
pt = circumf( pos,theta ,mf) ;
bool=obs(pt(2),pt(1));
while obs(pt(2),pt(1))==bool   
    theta=theta+5*pi/180  ;
    pt = circumf( pos,theta ,mf) ;
    if theta>2*pi
        flag=1;
        break
    end
end
A=circumf( pos,theta ,mf);


theta=0;
pt = circumf( pos,theta ,mf) ;
while obs(pt(2),pt(1))==bool   
    theta=theta-5*pi/180  ;
    pt = circumf( pos,theta ,mf) ;
     if theta<-2*pi
        flag=1;
        break
    end
end
B=circumf( pos,theta,mf );

if bool==1
    tmp=A;
    A=B;
    B=tmp;
end
wall=cap(A-B);

if flag==1
    wall=[];
end
end
