%
% ** qcR0(R) **
% Returns the 0th quaternion that corresponds to the rotation matrix, R.
% - R is a rotation matrix.
%
% Copyright (c) 2006 James Diebel, Stanford University
%
function q = qcR0(R)
c = sqrt(1 + R(1,1) + R(2,2) + R(3,3));
q = 1/2*[c;
	 (R(2,3)-R(3,2))/c;
	 (R(3,1)-R(1,3))/c;
	 (R(1,2)-R(2,1))/c];
