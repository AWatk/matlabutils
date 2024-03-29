function Rx = rotx(angle)
% ROTX Rotation matrix about the x axis
%  Rx = rotx(angle) returns the rotation matrix about the x axis for the
%  given angle in radians.

Rx = [  1   0           0;
        0   cos(angle) -sin(angle);
        0   sin(angle) cos(angle)     ];


end