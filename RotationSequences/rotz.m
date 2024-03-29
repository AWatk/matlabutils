function Rz = rotz(angle)
% ROTZ Rotation matrix about the z axis
%  Rz = rotz(angle) returns the rotation matrix about the z axis for the
%  given angle in radians.

Rz = [  cos(angle) -sin(angle)    0;
        sin(angle) cos(angle)     0;
        0           0               1     ];


end