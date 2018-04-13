function []=setInImage()
 
global inImage  I vid
vid = videoinput('winvideo', 1, 'MJPG_640x360');
src = getselectedsource(vid);

src.Brightness = 60;
src.Contrast = 45;
src.Saturation = 57;
src.Sharpness = 83;
src.Gain = 110;

preview(vid);
 
[inImage,I]=imcrop(getsnapshot(vid));
end