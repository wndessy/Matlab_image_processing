function []= problem4()

    % input matrix

    fprintf('4X4 matrix input')
    F=[1 2 3 4;5 6 7 8;9 10 11 12;13 14 15 16];
     

     % a) Use the Matlab operation f = F(:). What is the resulting f?
     fprintf('Using --- operator to transform matrix to 1D vector')
     f=F(:);
     f
     % b) Use the Matlab function reshape to reconstruct the image matrix
     fprintf('Reshaping the 1D vector back to a 4 by 4 matrix')
     r1=reshape(f,4,4);
     r1

     %c) Does the colon-operator, (:), work for any image size, M × N, if N 6 not= M
     fprintf('testing the --- operator with a 4X3 matrix')
     F1=[1 2 3 4;5 6 7 8;9 10 11 12];
     F1
     f1=F1(:);
     f1
     fprintf('YES it works with a 3X4 matrix')

     %d) Check how the following operations work: fr2 = F(2,:), and fc3 =
     %F(:,3)
     fprintf('find the second row of a given matrix F')
     fr2 = F(2,:);
     fr2
     fprintf('select the third column of a given matrix F')
     fc3=F(:,3);
     fc3
 
end
 