function S = skewSym(R)
% SKEWSYM calculates the skew symmetric matrix of a symbolic rotation
% matrix
%
%   S: a symbolic skew symmetric matrix (3x3)
%   R: a symbolic 3x3 rotation matrix

R_dot = diff(R);

S = R_dot*R';

end