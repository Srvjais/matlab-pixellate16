function [  ] =alignToA( destination )

o=15;
x=20;                                              
y=40;
z=80;

theta=deviation(destination);

if abs( theta)<o
    logger('o');
    return
end
logger(theta);
if theta<0
    theta=-theta;
     if theta<x
        Arduino('a');                               %Soft Left
    elseif theta<y
        Arduino('A');                               %Hard Left  
    elseif theta <z
        Arduino('q');                               %Hard Hard Left     
    else
        Arduino('Q');                               %Hard Hard Hard Left
    end
else
    if theta <x
        Arduino('d');                               %Soft Right
    elseif theta <y
        Arduino('D');                               %Hard Right           
    elseif theta<z
        Arduino('e');                               %Hard Hard Right  
    else
        Arduino('E');                               %Hard Hard Hard Right
    end
end

%alignToA(destination);

end

