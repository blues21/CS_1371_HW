function output = derangement(input)

% If the input number is less than one than
% this function will not run properly.
if input <= 0
   output = 'Invalid Input'; 
% If there's only one, you can't really change. :p
elseif input == 1
    output = 0;
% 2=1
elseif input == 2
    output = 1;
else
  % Runs the function given to you.
  output = (input-1) .* (derangement(input - 1) + derangement(input - 2));
  

end
end