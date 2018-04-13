function [  ] = getBox() 
global color plans boxNumber box 
boxtmp=plans(color);
boxtmp=cell2mat(boxtmp);
box=boxtmp(boxNumber(color),:);
end