function W = rotVelFromSkewSym(S)
% ROTVELFROMSKEWSYM returns the angular velocities about the principle
% axes from a given skew symmetric rotational matrix
%
%   W = rotVelFromSkewSym(S)
%
%       W: 3x1 matrix with angular velocities about principle axes
%       S: skew-symmetric matrix defined as S = R_dot*R, where R_dot is the
%       time derivative of R

W = zeros(3,1);

W(1) = S(3,2);
W(2) = S(1,3);
W(3) = S(2,1);

end