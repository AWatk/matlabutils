function Rx = rotx(angle)
% ROTX Rotation matrix about the x axis
%  Rx = rotx(angle) returns the rotation matrix about the x axis for the
%  given angle in degrees.

Rx = [  1   0           0;
        0   cosd(angle) -sind(angle);
        0   sind(angle) cosd(angle)     ];


end