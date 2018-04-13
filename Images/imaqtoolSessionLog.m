vid = videoinput('winvideo', 2, 'MJPG_1024x576');
src = getselectedsource(vid);

vid.FramesPerTrigger = 1;

preview(vid);

src.Brightness = 60;

src.Brightness = 76;

src.Brightness = 101;

start(vid);

stoppreview(vid);

imtool(getdata(vid));

preview(vid);

start(vid);

stoppreview(vid);

src.Brightness = 76;

src.Brightness = 60;

preview(vid);

src.Contrast = 45;

src.Saturation = 57;

src.Sharpness = 60;

src.Sharpness = 83;

src.Gain = 85;

src.Gain = 110;

start(vid);

stoppreview(vid);

imwrite(getdata(vid), 'C:\Users\AnkuR\Desktop\MatLab\MP Build 0.7 Ank\Images\jln.png');

