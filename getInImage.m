function [] = getInImage()

global I vid
global inImage 
 
inImage=imcrop(getsnapshot(vid),I);

end

