syms x;
f = (x^2)-2;
xn_2 = 1;
xn_1 = 2;
fprintf('n          x(n)              x(n)-sqrt(2)\n');
fprintf('-------------------------------------------\n')
fprintf('0 %20.15f %20.15f\n', double(xn_2), double(xn_2 - sqrt(2)));
fprintf('1 %20.15f %20.15f\n', double(xn_1), double(xn_1 - sqrt(2)));
xn = (xn_2*subs(f, x, xn_1) - xn_1*subs(f, x, xn_2))/(subs(f, x, xn_1) - subs(f, x, xn_2));
for n = 2:7 
    fprintf('%i %20.15f %20.15f\n', n, double(xn), double(xn-sqrt(2)));
    xn_2 = xn_1;
    xn_1 = xn;
    xn = (xn_2*subs(f, x, xn_1) - xn_1*subs(f, x, xn_2))/(subs(f, x, xn_1) - subs(f, x, xn_2));   
end