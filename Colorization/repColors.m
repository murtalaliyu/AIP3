%this function returns an mx1 matrix of colors 
%representing a color from each row in the input matrix
function [colorType] = repColors(color)

    [x,~] = size(color);
    
    for i=1:x
        
        r = color(i,1);
        g = color(i,2);
        b = color(i,3);
        
        if abs(r-g) < 20
            if abs(r-b) < 20
                if (r < 50 && g < 50 && b < 50)
                    colorType(i,:) = 'BLA';
                elseif (r > 200 && g > 200 && b > 200)
                    colorType(i,:) = 'WHI';
                else
                    colorType(i,:) = 'GRA';
                end
            end
        end
        
        primary = 0; 
        secondary = 0;
        if (r >= g) && (r >= b)
            primary = r;
            if (g >= b)
                secondary = g;
            else 
                secondary = b;
            end
        elseif (g >= r) && (g >= b)
            primary = g;
            if r >= b
                secondary = r;
            else 
                secondary = b;
            end
        else
            primary = b;
            if r >= g
                secondary = r;
            else
                secondary = g;
            end
        end
        
        if primary == r
            if (primary - secondary) >= 100
                colorType(i,:) = 'RED';
            else
                if secondary == b
                    if (b - g) > 40
                        colorType(i,:) = 'PUR';
                    else 
                        colorType(i,:) = 'PIN';
                    end
                else
                    if (g - b) > 150
                        colorType(i,:) = 'YEL';
                    else   
                        colorType(i,:) = 'ORA';
                    end
                end
            end
        elseif primary == g
            if (primary - secondary) >= 25
                colorType(i,:) = 'GRE';
            else
                if secondary == b
                    colorType(i,:) = 'BLU';
                else
                    colorType(i,:) = 'YEL';
                end
            end
        elseif primary == b
            if (primary - secondary) >= 100
                colorType(i,:) = 'BLU';
            else
                if secondary == r
                    if (r - g) > 40
                        colorType(i,:) = 'PUR';
                    else 
                        colorType(i,:) = 'IND';
                    end
                else
                    colorType(i,:) = 'BLU';
                end
            end
        end
        
    end
end
