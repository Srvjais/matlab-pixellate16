x=5;

if brick_picked
    Arduino('l',0);
    Arduino('s',0);
    brick_picked=0;
    fprintf('Brick Dropped\n');

    if color==oldColor
        andMask(box(1)-x:box+x,box(2)-x:box(2))=0;              %this brick done
        boxNumber(color)=boxNumber(color)+1;                    %this box done
        fprintf('Brick Dropped Successfully\n');
    end
     
end
