function [j sum] = run(sum)
sum = 0;
vec = 2:2:6;
for j = vec
    while j <= 5
        j = j + 3
    end
    sum = sum + j
    
end
   