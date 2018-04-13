function [  ] = getBot() 
import utility.*
global  botC1 botC2
global inImg 
getInImg()

global bot botvector

imbot1= filtr(inImg,botC1);
imbot2= filtr(inImg,botC2); 
%imtool(imbot1)
%imtool(imbot2) 
   stat1=regionprops(imbot1);
   stat2=regionprops(imbot2);

if numel(stat1)~=1||numel(stat2)~=1
    fprintf('no bot');pause(1);
    Arduino('s',1);
    getBot();
    return
end

cenbot2=stat1.Centroid;
cenbot1=stat2.Centroid;

bot=(cenbot1+cenbot2)/2;
botvector=cenbot2-cenbot1;
botvector=cap(botvector);
 bot=ceil(bot);
end
 
