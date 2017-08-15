%this function returns a color guess and its corresponding shade
function [colorAndShade] = Main(color, input)
    
    colorType = repColors(color);
    shade = grayPatch(input);

    [x,~] = size(colorType);
    colorAndShade = zeros(x,2);
    for i=1:x
        colorAndShade(i,1) = colorType(i,1);
        colorAndShade(i,2) = shade(i,1);
    end
end
