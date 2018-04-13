function [ theta ] = deviation( destination )

global botvector bot
getBotA();
destination=destination-bot;

dv=complex(destination(1),destination(2));
bv=complex(botvector(1),botvector(2));
theta=angle(dv)-angle(bv);
theta=radtodeg(theta);

end

