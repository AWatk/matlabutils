function Rz = rotz(angle)
% ROTZ Rotation matrix about the z axis
%  Rz = rotz(angle) returns the rotation matrix about the z axis for the
%  given angle in degrees.

Rz = [  cosd(angle) -sind(angle)    0;
        sind(angle) cosd(angle)     0;
        0           0               1     ];


end