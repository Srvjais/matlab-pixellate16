function [ out ] = filtr( in ,Color)
global red blue green Max Min
out=(...
    in(:,:,1)>=Color(Min,red)&(in(:,:,1)<=Color(Max,red))...
    &in(:,:,2)>=Color(Min,green)&(in(:,:,2)<=Color(Max,green))...
    &in(:,:,3)>=Color(Min,blue)&(in(:,:,3)<=Color(Max,blue))...
    ); 
disctmp=strel('disk',5);                               %!!!!!!!!!!!!!!!!!!!!!!!!!
out=imdilate(out,disctmp);
out=imerode(out,disctmp); 
out=bwareaopen(out,50);                                %!!!!!!!!!!!!!!!!!!!!!!!!!change area constant
 
end

