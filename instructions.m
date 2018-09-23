% a=10;
% b=sin(10);
% x=[0;2;4;6];
% y=[2 2 2 2; 5 5 5 5; 3 3 3 3 ;9 9 9 9];
% ansy=y+y;
% z=y.^2;
% m=y./2;
% identity=eye(3);
% lenth=length(x);
% one=ones(2);
% rand=rand(4);
% generated=[2:4:20];

% vector A
fprintf('=================================Vector A transpose\n')


A=[1 3 0 0; 3 1 0 0; 0 0 1 0 ;0 0 0 3]

% vector A transpose
fprintf('=================================A transpose \n')
At=transpose(A)


% vector A x A transpose
fprintf('================================= A x A transpose \n')
AAt= A*At

% vector A transpose X  A
fprintf('=================================A transpose X A \n')
AtA=At*A


% Eigen values and vectors
fprintf('===Eigen values and vectors====== \n')
eig(AAt)


fprintf('===Eigen values and vectors====== \n')

[eigen_vectorAAt,eigen_valueAAt]=eig(AAt)

[eigen_vectorAtA,eigen_valueAtA]=eig(AtA)



