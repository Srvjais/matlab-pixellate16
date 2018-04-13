function [ answer ] = isReached( destination,position ,error )
import utility.*
 
answer=distance([0,0],position-destination)<error; 

end

