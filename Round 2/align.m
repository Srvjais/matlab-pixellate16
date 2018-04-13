function [  ] =align( dest )
import utility.*
global bot botvector;
getBot();
o=5;

theta=deviation(dest-bot,botvector);
if abs(theta)<o
    fprintf('o');
    return
elseif abs(theta)>130
    theta=theta/2;
end
Arduino('t',theta); 
 
end

