%% Final Matlab Homework

%% Problem 1 
 x = [0:4,4,-4,1,1]'; 
 y = ones(9,1);
% a.)
 xN = norm(x);
 yN = norm(y);
xyN = norm(x+y);
Nxy = norm(x-y);
xyN^2 + Nxy^2; %146
2*(xN^2 + yN^2); % Also 146
% b.)
% T is equal to the formula for the angle between vectors, since cos
% inverse can only be between 0 and  1, t will be as well.
t = (x'*y)/(xN*yN);
acos(t)*(180/pi);
% c.)
p = (dot(x,y)/yN^2)*y;
z = x - p;
zN = norm(z);%sqrt(48)
pN = norm(p);% 4, pythagorean law is satisfied
%% Problem 3
% a.) 
p = [1 : 10]';
T = [222,227,223,233,244,253,260,266,270,266]';
V = [p, ones(10,1)];
c = T\V;
% b.)
q = 1 : 0.1 : 10;
z = polyval(c,q);
plot(1,z,p,T,'x');
% c.)
A = vander(p);
Atemp = A(:,[4:8]);
z = polyval(c,q);
c = T\Atemp;
plot(1,z,p,T,'x');
%Top
% d.)
A = A(:,[2:8]);
z = polyval(c,q);
c = T\A;
plot(1,z,p,T,'x');
%% Problem 9
n = 100;
D = diag(ones(n-1,1),1);
A = 2*eye(n)- D - D';
s = min(eig(A));
P = s*n^2

n = 200;
D = diag(ones(n-1,1),1);
A = 2*eye(n)- D - D';
s = min(eig(A));
P = s*n^2

n = 400;
D = diag(ones(n-1,1),1);
A = 2*eye(n)- D - D';
s = min(eig(A));
P = s*n^2
%% Problem 16 

B = [-1,-1;,1,1];
A = [zeros(2),eye(2);eye(2),B];
% a.)
I = eye(4,4);
rref(A - I);
rref(A + I);
% The dimensions of both eigenspaces are both 1.
% b.)
det(A)
trace(A)
eig(rref(A - I))
eig(rref(A + I))
[V,D] = eig(A);
% A is not defective, using [V,D] one can find that D spans R^4 and each
% column is L.I.
% c.)
format long 
e = eig(A);
% There are 15 digits after the decimal computed in the eigenvalues.
[X,D] = eig(A);
cond(X);
% d.) 
rank(X)
% The computed eigenvectorse are linerally independent since the rank is
% equal to the number of columns.
inv(X)*A*X;
isdiag(inv(X)*A*X)
%The matrix X does not diagonalize A.





