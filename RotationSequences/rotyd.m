function Ry = rotyd(angle)
% ROTY Rotation matrix about the y axis
%  Ry = roty(angle) returns the rotation matrix about the y axis for the
%  given angle in degrees.

Ry = [  cosd(angle)     0   sind(angle);
        0               1   0;
        -sind(angle)    0   cosd(angle)     ];   


end