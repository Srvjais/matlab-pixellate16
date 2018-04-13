if brick_picked
    Arduino('p');
    Arduino('s');
    brick_picked=0;
    if color==oldColor
        andMask(box(1)-x:box+x,box(2)-x:box(2))=0;              %this brick done
        boxNumber(color)=boxNumber(color)+1;                    %this box done
    end
     
end
