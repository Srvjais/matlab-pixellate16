function []=setInImg()
 
global inImg  I vid
vid = videoinput('winvideo', 2, 'RGB24_1280x960');
%set values
src = getselectedsource(vid);

src.Brightness = 80;
src.Contrast = 45;
src.Saturation = 95;
src.Sharpness = 80;
src.Gain = 80;
src.Exposure = -4;
preview(vid);
 
[inImg,I]=imcrop(getsnapshot(vid));
end