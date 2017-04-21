function Rx = symRotx(x)
% SYMROTX Symbolic rotation matrix about the x axis
%  Rx = symRotx
%
%   angle: char representation of angle

if ~strcmp(class(x),'sym') 
    error('input is not of type sym')
end

Rx = [  1   0           0;
        0   cos(x) -sin(x);
        0   sin(x) cos(x)     ];


end