%this function returns a matrix of 3-value vectors
%representing the r,g,b values of an input image
function [r,g,b, image2d] = getRGB()

    prompt = 'What is the file path? ';
    url = input(prompt);
    
    image = imread(url);
    imtool(image);
    
    [x,y,~] = size(image);
    r = zeros(x,y);
    g = zeros(x,y);
    b = zeros(x,y);
    image2d = zeros(x,y);
    for i=1:x
        for j=1:y
            r(i,j) = image(i,j,1);
            g(i,j) = image(i,j,2);
            b(i,j) = image(i,j,3);
            image2d(i,j) = round(Gray(r(i,j),g(i,j),b(i,j)));
        end
    end
    
    matToGray = mat2gray(image2d);
    imshow(matToGray);
    
    %{
    imageRGBmatrix = zeros(x,y);
    one = [r(1,1) g(1,1) b(1,1)];
    for i=1:x
        for j=1:y
            imageRGBmatrix(i,j) = one;
        end
    end
    %}
end
