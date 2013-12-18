function [pos vel accel] = speedReport(input, time)
% Output Formats:
% pos = Position (m)
% vel = Velocity (m/s)
% accel = acceleration (m/s^2)

% first we plug in all of our inputs in order to find
% the final velocity (m/s)
vel(1) = input(1)*(time^2) 
vel(2) = input(2)*time
vel(3) = input(3) 

% Derivative of Velocity = Acceleration
accel = diff(vel);
% Integral of Velocity = Position



end