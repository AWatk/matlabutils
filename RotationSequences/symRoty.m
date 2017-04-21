function Ry = symRoty(y)
% SYMROTY Symbolic rotation matrix about the y axis
%  Ry = symRoty 

if ~strcmp(class(y),'sym') 
    error('input is not of type sym')
end

Ry = [  cos(y)     0   sin(y);
        0               1   0;
        -sin(y)    0   cos(y)     ];


end