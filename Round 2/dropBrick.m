d=30;
if brick_picked
    Arduino('s',0.4);
    brick_picked=0;
    fprintf('\nBrick Dropped\n');
    getColor();
    if color==oldColor
        andMask=censor(andMask,box,d) ;           %this brick done
        boxNumber(color)=boxNumber(color)+1;                    %this box done
        fprintf('\nBrick Dropped Successfully\n');
    end
     
end
