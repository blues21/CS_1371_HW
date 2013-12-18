function [cellArray winner] = iceSkate(input)

[row col] = size(input);
append = cell(row,1);
append{1} = 'Overall Score';
for c = 2:row
    total = [];
    
    for v = 2:col
        
    score = input{c,v};
    avgscore = mean(score);
    
        switch input{1,v}
            case 'Long Program'
                    mult = .6;
            case 'Short Program'
                    mult = .3;
            case 'Bonus Event'
                    mult = .1;
        end
    
    mix = mult.*avgscore;
    
    total = [total mix];
    
    end
    total = sum(total);
    vec = [];
    append{c} = total;
    
end

cellArray = [input append];

[list pos] = max(cell2mat(append(2:end)));

winner = input{pos+1,1};
end
