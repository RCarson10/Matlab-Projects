%% Homework Chapter 2

%% Question 1

A = round(10 * rand(5));
B = round(20 * rand(5))-10;

% a. det(A) = A.', True
det(A)
det(A.')
% b. det(A + B) = det(A) + det(B), False
det(A + B)
det(A) + det(B)
% c. det(A*B) = det(A)*det(B), True
det(A*B)
det(A)*det(B)
% d. det(A.'*B.') = det(A.')*det(B.'), True
det(A.'*B.')
det(A.')*det(B.')
% e. det(A^-1) = 1/det(A), True
1/det(A)
det(A^-1)
% f. det(A*B^-1) = det(A) * det(B), False
det(A) * det(B)
det(A*B^-1)
%% Question 5

U = round(100 * rand(10));
U = triu(U,1) + 0.1 * eye(10);
det(U)
det(U')
det(U*U')
% The first theoretical value (det(U)) does equal the computation 10^-10
% However, the computations of det(U') and det(U * U') does not equal the
% theoretical value of 10^-20
%% Question 6
A = vander(1 : 6);
A = A - diag(sum(A'));
x = ones(6,1);
% Whenever you have a row of zeroes in a matrix, the det is 0. 
% If you expand on that row you will get a sum of 0.
det(A)
inv(A)
% The inverse function may be more reliable since when I tried the det
% function Matlab gave me a message of "Warning: Matrix is close to singular or badly scaled. 
% Results may be inaccurate. RCOND =  1.581687e-19.". 
det(A)
det(A.')
% The two values of A and A.' are not equal
rref(A)
rref(A.')
format short e
[L, U] = lu(A); U
% This matrix is not singular, it looks like the decimals may be too long,
% or the format of the matrix does not compute well with MATLAB.
format short
d = prod(diag(U))
d = det(A)
