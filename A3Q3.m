T = table;
for n = 2:13
    x = ones(n, 1);
    H = hilb(n);
    b = H * x;
    x_hat = H \ b;
    
    f_n = log10(10^(1.49044545*(n)-1.72));
    condition_number = log10(cond(H));
    
    relative_error = norm(x_hat - x, inf)/norm(x, inf);
    g_n = -log10(cond(H)) + 16.5941;
    logrr = -log10(relative_error);
    
    T = [T; table(n, f_n, condition_number, relative_error, g_n, logrr)];
end
disp(T)
plot(T.n, T.condition_number, T.n, T.f_n), xlabel('n'), legend('log10(cond(H))', 'f(n)'), grid on
plot(T.n, T.logrr, T.n, T.g_n), xlabel('n'), legend('-log10(||xhat - x||/||x||)', 'g(n)'), grid on
