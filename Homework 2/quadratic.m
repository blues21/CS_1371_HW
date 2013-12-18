function[plus_sol minus_sol] = quadratic(A, B, C)

% The values are placed in the positive quadratic equation.
plus_sol = (-1.*B + sqrt(B.^2 - (4.*A.*C)))./(2.*A);

% The values are placed in the negative quadratic equation.
minus_sol = (-1.*B - sqrt(B.^2 - (4.*A.*C)))./(2.*A);