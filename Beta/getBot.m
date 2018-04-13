function [] = getBot()
global bot botvector inImage B1 B2
tmp=(inImage(:,:,3)>B1&inImage(:,:,3)<B2);
tmp=bwareaopen(tmp,200);   
q=regionprops(tmp,'Perimeter','Area','Centroid');

for i =1:numel(q)
    if((q(i).Perimeter^2)/q(i).Area<15)
        botA=q(i).Centroid;
    end
    if((q(i).Perimeter^2)/q(i).Area>15)
        botB=q(i).Centroid;
    end
end

bot=(botA+botB)/2;
botvector=botA-botB;
botvector=botvector/distance([0,0],botvector(:));
end

