function tikTok(date, time)

[hours left] = strtok(time, ':');
minutes = strtok(left, ':');
hours = str2num(hours);
minutes = str2num(minutes);
if minutes == 0
    minutes = 60;
end
hold on
axis square

% Form unit circle "clock"
th = linspace(0, 2*pi, 100);
r = 1; g = 0;
x = r*cos(th);
y = r*sin(th);

plot(x,y, 'k');
plot(0,0, 'ko');

% tick marks 

tickLenStart = .9;
tickLenStop = 1;

theta = [pi/2:-pi/6:-3*pi/2];
tickX = [tickLenStart*cos(theta') tickLenStop*cos(theta')]';
ticY = [tickLenStart*sin(theta') tickLenStop*sin(theta')]';

plot(tickX, ticY, 'k')



% hour hand
hoursTheta = [pi/3:-2*pi/12:-3*pi/2];
HourHandLen = .6;
x = [0 HourHandLen*cos(hoursTheta(hours))];
y = [0 HourHandLen*sin(hoursTheta(hours))];
hourhand = plot(x, y, 'b');



 
% minute hand
minsTheta = [pi/2:-pi/30:-3*pi/2];
minsTheta = minsTheta(2:end);
MinuteHandLen = .9;
x2 = [0 MinuteHandLen*cos(minsTheta(minutes))];
y2 = [0 MinuteHandLen*sin(minsTheta(minutes))];
minutehand = plot(x2, y2, 'r');

hold off


outDate = showDate(date);
title(['Today is ' outDate ', and the Time is ' time]);

end