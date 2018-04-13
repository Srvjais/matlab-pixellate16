function []=setInImg()
 
global inImg  I vid
vid = videoinput('winvideo', 2, 'YUY2_1280x960');
%set values
src = getselectedsource(vid);

src.Brightness = 45;
src.Contrast = 32;
src.Saturation = 80;
src.Sharpness = 24;
src.Gain = 64;
src.Exposure = -6;

 vid.ReturnedColorspace = 'rgb';
preview(vid);

[inImg,I]=imcrop(getsnapshot(vid));
end