function [ theta ] = deviation( v1,v2 ) 
dv=complex(v1(1),v1(2));
bv=complex(v2(1),v2(2));
theta=angle(dv)-angle(bv);
theta=radtodeg(theta);
if abs(theta)>180
    theta =-(360-abs(theta));
end
end

