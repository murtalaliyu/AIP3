%this function returns the grey equivalent 
%of an r,g,b input combination
function grayRGB = Gray(r,g,b)
    grayRGB = (0.21*r) + (0.72*g) + (0.07*b); 
end
