function [ ] = Arduino(key,val)
%Interface with Arduino
global scr
c1=.0035;%right
c2=.0040;%left
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
    pause(val); 
 elseif (key=='1')
     fwrite(scr,'1');
     pause(3);
     fwrite(scr,'4');
 elseif (key=='2')
     fwrite(scr,'2');
       pause(3);
     fwrite(scr,'4');
 elseif (key=='3')
     fwrite(scr,'3');
 elseif (key=='4')
    fwrite(scr,'4');
 end
fwrite(scr,'u');

pause(0.5);
end

