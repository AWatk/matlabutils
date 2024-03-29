function Ry = roty(angle)
% ROTY Rotation matrix about the y axis
%  Ry = roty(angle) returns the rotation matrix about the y axis for the
%  given angle in radians.

Ry = [  cos(angle)     0   sin(angle);
        0               1   0;
        -sin(angle)    0   cos(angle)     ];   


end