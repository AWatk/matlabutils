function R = eulerAnglesMatrix(angles,axes,frametype)
% EULERANGLESMATRIX returns the rotation matrix for a given set of euler
% angles
%
%  R = eulerAngleMatrix(angles,axes,frametype) 
%       R: 3x3 rotation matrix
%       angles: 3 vector of rotation angles in degrees
%       axes: string listing the order of axis rotation
%       frametype: string, either 'fixed' or 'current'. 'fixed' corresponds
%       to postmultiplication of the euler angles and 'current' corresponds
%       to premultiplication.
%
%   Example: R = eulerAngleMatrix([90,0,0], 'xyz', 'fixed')
%

%% Input Sanitation

% ensure angles is a 3 vector
if ~(size(angles) == [1 3] | size(angles) == [3 1])
    error('angles input vector is not a 3 vector');
end

% ensure axes only contains 3 chars and only x,y,z
if size(axes) ~= [1 3]
    error('three axes must be specified');
elseif regexp(axes,'[a-wA-W_0-9]')
    error('invalid axis. Accepted values are x,y, or z');
end

% ensure frametype is either 'fixed' or 'current'

if ~(strcmp(frametype, 'fixed') || strcmp(frametype, 'current'))
    error('invalid frametype. Accepted values are "fixed" and "current"');
end

%% Calculate Rotation Matrix

R = eye(3);

%premultiplcation sequence
sequence = [1,2,3];

%if premutiplication is required, flip the sequence and postmultipy
if strcmp(frametype, 'fixed')
    sequence = fliplr(sequence);
end

for i = sequence
    if regexp(axes(i),'[xX]')
        R = R*rotx(angles(i));
    elseif regexp(axes(i), '[yY]')
        R = R*roty(angles(i));
    else
        R = R*rotz(angles(i));
    end
end








end