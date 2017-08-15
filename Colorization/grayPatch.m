%takes an mx9 input and returns an mx1 matrix of color shades
function [shade] = grayPatch(input)
    [x,~] = size(input);
    shade = zeros(x,1);
    for i=1:x
        average = round(sum(input(i,:)) / 9);
        
        if (average < 100) %a dark shade
            shade(i,:) = 1;
        elseif (average >= 200) %a light shade
            shade(i,:) = 2;
        else %just a normal (neutral) shade
            shade(i,:) = 3;
        end
        
    end
end
