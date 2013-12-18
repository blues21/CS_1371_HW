function[logWithBase] = logBase(num1, num2)
   % Because of the mathematical formula that the log of a number over the
   % log of it's base is equal to the log to that base we take the log and
   % base and perform this step.
   logWithBase = log(num1) ./ log(num2);