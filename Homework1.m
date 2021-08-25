%% Chapter 1 Homework

%%Problem #1
A = rand(4); 
B = rand(4);

%a A2 and A3 are equal
     A1 = A*B; 
     A2 = B*A; 
     A3 = (A'* B')'; 
     A4 = (B*A)';
  
%b A2/A3 and A1/A4 are equal
     A1 = A'*B'; 
     A2 = (A*B)'; 
     A3 = B' * A'; 
     A4 = (B*A)';
%c None of them are equal
    A1 = inv(A*B); 
    A2 = inv(A)*inv(B); 
    A3 = inv(B*A); 
    A4 = inv(B)*inv(A);
%d None of these are equal as well
     A1 = inv((A*B)'); 
     A2 = inv(A'*B'); 
     A3 = inv(A')*inv(B'); 
     A4 =(inv(A)*inv(B))';
%%Problem 4
  B = eye(10) - triu(ones(10),1)
  C = inv(B) 
  x = C(:,10); 
  B(10,1) = -1/256;
  B*x
% We know B must be nonsingular because the eye function returns a matrix with ones on the diagonal and zeroes everywhere else by the dimensions given 
% Also the triu function gives us the top corner of a ones matrix,therefore it must have an inverse.
% The new matrix B has turned into a vector of zeroes and it is no longer
% singular becuase there is no inverse for zero.

%%Problem 6
adjMat = [0,1,0,1,0,0,0,1;1,0,1,0,0,0,1,0;0,1,0,1,0,0,0,0;1,0,1,0,1,0,0,0;0,0,0,1,0,1,0,0;0,0,0,0,1,0,1,0;0,1,0,0,0,1,0,1;1,0,0,0,0,0,1,0];
adjMat^2;
%Walks length 2 from V1 to V7 = 2 ; V4 to V8 = 1 ;V5 to V6 = 0;V8 to V3 = 0
%Walks length 4 from V1 to V7 = 15 ; V4 to V8 = 10 ;V5 to V6 = 0;V8 to V3=0
%Walks length 6 from V1 to V7 = 103 ; V4 to V8 = 73 ;V5 to V6 = 0;V8-V3=0
%Walks length 8 from V1 to V7 = 697 ; V4 to V8 = 501;V5 to V6 = 0;V8-V3=0
%There will be no even walks from Vi to Vj when the exponent is greater
%than 4.
%Walks length 3 from V1 to V7 = 0 ; V4 to V8 = 0 ;V5 to V6 = 3;V8 to V3 = 3
%Walks length 5 from V1 to V7 = 0 ; V4 to V8 = 0 ;V5 to V6 = 15;V8 to V3=23
%Walks length 7 from V1 to V7 = 0 ; V4 to V8 = 0 ;V5 to V6 = 120;V8-V3=159 
%For the odd walk lengths, the same does not apply since the matrix is
%symmetric. When k is odd, the matrix is symmetric, when it is even, the
%walks will be odd after the 4th power.
B = adjMat;
B(3,6) = 1;
B(6,3) = 1;
B(5,8) = 1;
B(8,5) = 1;
B^2;
B^3;
B^4;
B^5;
%The conjecture does not hold for this matrix anymore.
adjMat = [0,1,0,1,0,0,0,1;1,0,1,0,0,0,1,0;0,1,0,1,0,0,0,0;1,0,1,0,1,0,0,0;0,0,0,1,0,1,0,0;0,0,0,0,1,0,1,1;0,1,0,0,0,1,0,1;1,0,0,0,0,1,1,0];
%The earlier conjecture does not hold for this graph either
L = [0,0,0,0,127,4,80;0.6747,0.737,0,0,0,0,0;0,0.0486,0.6610,0,0,0,0;0,0,0.0147,0.6907,0,0,0;0,0,0,0.0518,0,0,0;0,0,0,0,0.8091,0,0;0,0,0,0,0,0.8091,0.8089]
x0 = [200000,130000,100000,70000,500,400,1100]';

x50 = round(L^50*x0)
x100 = round(L^100*x0)
x150 = round(L^150*x0)
x200 = round(L^200*x0)
x250 = round(L^250*x0)
x300 = round(L^300*x0)
L(2,1) = 0.77;
%The survival potential has improved dramatically
L(2,1) = 0.88;
%once again the survival rate has improved dramatically.

