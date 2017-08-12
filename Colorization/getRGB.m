%this function returns a matrix of 3-value vectors
%representing the r,g,b values of an input image
function imageRGBmatrix = getRGB()

    prompt = 'What is the file path? ';
    url = input(prompt);
    
    image = imread(url);
    imtool(image);
    
    [x,y,~] = size(image);
    imageRGBmatrix = zeros(x,y);
    for i=1:x
        for j=1:y
            imageRGBmatrix(i,j) = [image(:,:,1) image(:,:,2) image(:,:,3)];
        end
    end
end
