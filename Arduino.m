function [ ] = Arduino(key,val)
%Interface with Arduino
global scr
c1=.0045;%right
c2=.0035;%left
fprintf('%c',key);

 if (key=='t')              %input is theta
    if val>0
        fwrite(scr,'d');
        pause(c1*val);
    else
        val=-val;
        fwrite(scr,'a');
        pause(c2*val);
    end
 elseif (key=='w')
     fwrite(scr,'w');
      pause(1*val);   
 elseif (key=='s')
    fwrite(scr,'s');
    pause(.4); 
 end
 
fwrite(scr,'u');
pause(0.93);
end

