function [newColor] = test(data)
    [x,~] = size(data);
    newColor = zeros(x,3);
    for i=1:x %for each row in data
        avg = round(sum(data(i,:))/9);
        if (avg >= 0) && (avg < 50)
            newColor(i,1) = 0;
            newColor(i,2) = 0;
            newColor(i,3) = 0;
        elseif (avg >= 50) && (avg < 90)
            newColor(i,1) = 102;
            newColor(i,2) = 51;
            newColor(i,3) = 0;
        elseif (avg >= 90) && (avg < 150)
            newColor(i,1) = 0;
            newColor(i,2) = 0;
            newColor(i,3) = 204;
        elseif (avg >= 150) && (avg < 200)
            newColor(i,1) = 0;
            newColor(i,2) = 204;
            newColor(i,3) = 0;
        elseif (avg >= 200) && (avg < 230)
            newColor(i,1) = 255;
            newColor(i,2) = 255;
            newColor(i,3) = 0;
        elseif (avg >= 230) && (avg <= 255)
            newColor(i,1) = 255;
            newColor(i,2) = 255;
            newColor(i,3) = 255;
        end
    end
end

