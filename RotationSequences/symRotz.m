function Rz = symRotz(z)
% SYMROTY Symbolic rotation matrix about the y axis
%  Rz = symRotz

if ~strcmp(class(z),'sym') 
    error('input is not of type sym')
end


Rz = [  cos(z) -sin(z)    0;
        sin(z) cos(z)     0;
        0           0               1     ];


end