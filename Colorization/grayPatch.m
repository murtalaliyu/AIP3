%takes an mx9 input and returns an mx3 matrix of rgb values
function [mat] = grayPatch(input)
    [x,~] = size(input);
    mat = zeros(x,3);
    for i=1:x
        average = round(sum(input(i,:)) / 9);
        
        A = [.21 0 0; 0 .72 0; 0 0 .07];
        B = round([.21*average; .72*average; .07*average]);
        X = round(A\B)';
        mat(i,1) = X(1,1);
        mat(i,2) = X(1,2);
        mat(i,3) = X(1,3);
    end
end
