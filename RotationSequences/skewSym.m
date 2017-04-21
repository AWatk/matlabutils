function S = skewSym(R)
% SKEWSYM calculates the skew symmetric matrix of a symbolic rotation
% matrix
%
%   S: a symbolic skew symmetric matrix (3x3)
%   R: a symbolic 3x3 rotation matrix

rotations = symvar(R);

R_dot = zeros(3,3);

for i = 1:length(rotations)
    idot = sym([char(rotations(i)) 'dot'],'real');
    R_dot = R_dot + diff(R,rotations(i))*idot;
end


S = R_dot*R';

S = simplify(S);

end