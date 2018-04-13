function [  ] =align( destination )
import utility.*
global bot botvector;
getBot();
o=5;

theta=deviation(destination-bot,botvector);
if abs( theta)<o
    fprintf('o');
    return
end
Arduino('t',theta); 
 
end

