function output = hanoi(input)

if input == 0
   output = 0; 
else
   % Recursion.
   output = 2 * hanoi(input-1) + 1;
end 
end