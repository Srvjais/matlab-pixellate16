function [] = getInImg()

global I vid
global inImg 
 
inImg=imcrop(getsnapshot(vid),I);
 
end

