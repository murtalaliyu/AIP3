%this function takes in mx9 & mx3 matrices and
%returns mx2 matrix where col1 is each mx9 input 
%avg and col2 is each mx3 input color avg
function [returnMatrix,inputSize] = train(input,color)
    [x,~] = size(input);
    inputSize = x;
    returnMatrix = zeros(x,5);
    for i=1:x
        returnMatrix(i,1) = round(sum(input(i,:)) / 9);
        returnMatrix(i,2) = round(sum(color(i,:)) / 3);
        returnMatrix(i,3) = color(i,1);
        returnMatrix(i,4) = color(i,2);
        returnMatrix(i,5) = color(i,3);
    end
end
