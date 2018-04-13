function [ ] = logger( varargin )
global logg
for i=1:nargin  
    logg=[logg,varargin(i)];                              %#ok<*AGROW>  
end
end
