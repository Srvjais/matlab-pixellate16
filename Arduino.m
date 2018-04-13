function [ ] = Arduino( in )
%Interface with Arduino
global scr
fprintf('%c',in);
fwrite(scr,in);
pause(1);
end

