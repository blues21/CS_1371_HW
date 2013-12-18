function output = scrambleImage(img, order)

fh1 = fopen(order);
line = fgetl(fh1);
A = imread(img);
quad1 = A(1:end/2, 1:end/2,:);
quad2 = A(1:end/2, end/2+1:end,:);
quad3 = A(end/2+1:end, 1:end/2,:);
quad4 = A(end/2+1:end, end/2+1:end,:);

while line~=-1
    [order quad] = strtok(line, ':');
    quad = quad(3:end); 
    
    switch order
        case 'Rotate'
        
            switch quad 
                case 'Q1'
                    quad1 = quad1(end:-1:1,end:-1:1,:);
                case 'Q2'
                    quad2 = quad2(end:-1:1,end:-1:1,:);
                case 'Q3'
                    quad3 = quad3(end:-1:1,end:-1:1,:);
                case 'Q4'
                    quad4 = quad4(end:-1:1,end:-1:1,:);
            end
            
        case 'Swap Quadrants'
    
            switch quad
                case 'Q1,Q2'
                    var = quad1;
                    quad1 = quad2;
                    quad2 = var;
                case 'Q1,Q3'
                    var = quad1;
                    quad1 = quad3;
                    quad3 = var;    
                case 'Q1,Q4'
                    var = quad1;
                    quad1 = quad4;
                    quad4 = var;
                case 'Q2,Q1'
                    var = quad2;
                    quad2 = quad1;
                    quad1 = var;
                case 'Q2,Q3'
                    var = quad2;
                    quad2 = quad3;
                    quad3 = var;
                case 'Q2,Q4'
                    var = quad2;
                    quad2 = quad4;
                    quad4 = var;    
                case 'Q3,Q1'
                    var = quad3;
                    quad3 = quad1;
                    quad1 = var;
                case 'Q3,Q2'
                    var = quad3;
                    quad3 = quad2;
                    quad2 = var;         
                case 'Q3,Q4'
                    var = quad3;
                    quad3 = quad4;
                    quad4 = var;
                case 'Q4,Q1'
                    var = quad4;
                    quad4 = quad1;
                    quad1 = var;    
                case 'Q4,Q2'
                    var = quad4;
                    quad4 = quad2;
                    quad2 = var;
                case 'Q4,Q3'
                    var = quad4;
                    quad4 = quad3;
                    quad3 = var;
            end
    end
            
    line = fgetl(fh1);
end

output = [quad1 quad2 ; quad3 quad4];
fclose(fh1);