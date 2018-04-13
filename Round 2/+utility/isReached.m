function [ answer ] = isReached( dest,position ,error )
import utility.*
 
answer=distance([0,0],position-dest)<error; 

end

