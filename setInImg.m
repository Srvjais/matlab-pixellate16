function []=setInImg()
 
global inImg  I vid
vid = videoinput('winvideo', 2, 'MJPG_1024x576');
%
src = getselectedsource(vid);

src.Brightness = 100;
src.Contrast = 50;
src.Saturation = 90;
src.Sharpness = 80;
src.Gain = 80;
src.Exposure = -5;
preview(vid);
 
[inImg,I]=imcrop(getsnapshot(vid));
end