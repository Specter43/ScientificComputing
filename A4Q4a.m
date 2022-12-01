syms x;
f = (x^2)-2;
df = diff(f);
x_ = 1;
fprintf('n          x(n)              x(n)-sqrt(2)\n');
fprintf('-------------------------------------------\n')
for n = 0:5
    fprintf('%i %20.15f %20.15f\n', n, x_, x_-sqrt(2));
    x_ = x_ - subs(f, x, x_) / subs(df, x, x_);
end