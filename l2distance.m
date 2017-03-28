function D=l2distance(X,Z)
% function D=l2distance(X,Z)
%	
% Computes the Euclidean distance matrix. 
% Syntax:
% D=l2distance(X,Z)
% Input:
% X: dxn data matrix with n vectors (columns) of dimensionality d
% Z: dxm data matrix with m vectors (columns) of dimensionality d
%
% Output:
% Matrix D of size nxm 
% D(i,j) is the Euclidean distance of X(:,i) and Z(:,j)
%
% call with only one input:
% l2distance(X)=l2distance(X,X)
%

if (nargin==1) % case when there is only one input (X)
	%% fill in code here
    [~,n]=size(X);
    G = X' * X;   
    x = sum(X.^2,1);
    S = x' * ones(1, n);
    R = ones(n, 1) * x;
    D2 = R + S - 2 * G;
    D2(1:(n+1):n*n) = 0;
    D = sqrt(D2);
    
else  % case when there are two inputs (X,Z)
	%% fill in code here
    [~,n]=size(X); 
    [~,m]=size(Z);
    G = X' * Z;  
    x = sum(X.^2,1);
    z = sum(Z.^2,1);
    S = x' * ones(1, m);
    R = ones(n, 1) * z;
    D2 = R + S - 2 * G;
    D = sqrt(D2);
end;
%