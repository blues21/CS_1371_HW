function ham

newx = linspace(1,3)

newy = interp1(x,y,newx, [], 'extrap')

coeffs = polyfit(x,y,order)

newy = polyval(coeff, newx)

% N points --> n - 1st order

diff(vec)

diff(y)./diff(x)
