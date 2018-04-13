function [ box ] = getBox() 
global color plans boxNumber
boxtmp=plans(color);
boxtmp=cell2mat(boxtmp);
box=boxtmp(boxNumber(color),:);
box=ceil(box);
end