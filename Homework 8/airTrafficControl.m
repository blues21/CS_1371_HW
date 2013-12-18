function[output] = airTrafficControl(radar, file, distance)

    count = 0;
    vector = [];
    ovector = [];
    x=1;
    vec = [];
    %   The size of the radar is determined
    [x y] = size(radar);
    %   The center of the radar is found
    centerX = round(x/2);
    centerY = round(y/2);

    %   The excel file is opened and read
    [num text raw] = xlsread(file);
    
    i = length(num);
    
    for c = 1:i
        
        number = num(c);
        words = text(c);
        
        boolArray = strcmp(radar, words);
        [left right] = size(boolArray);
        
        for z = 1:left
            for q = 1:right
                
                 if (boolArray(z,q) == 1)
                     
                     name = radar(z,q);
                     
                     %  Location of the true value
                     rowd = z;
                     cold = q;
                     
                     %  Distance from the center
                     distanceY = abs(centerX - z);
                     distanceX = abs(centerY - q);
                     
                     distanceY = distance .* distanceY;
                     distanceX = distance .* distanceX;
                     
                     distanceT = sqrt((distanceY)^2 + (distanceX)^2);
                     
                     time = distanceT ./ number;
                     
                     ovector = [ovector name];
                     vector = [vector time];
                     
                 end 
            end
        end
    end

    [vector other] = sort(vector);
    output = ovector(other);
    output = num2cell(output);

    for k = 1:length(output)

    output(k) = output{k};

    end

end
