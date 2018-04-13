function [ answer ] = isReached( destination )
global bot
getBotA();
e=30;                    %error term
answer=distance([0,0],bot-destination)<e; 
 
end

