x1 = 2.1;
x2 = 1.5;
x3 = 1.5;
x4 = 100;
T1 = table;
T2 = table;
T3 = table;
T4 = table;
for n = 0:10
    err1 = abs(x1-2);
    err2 = abs(x2-2);
    err3 = abs(x3-2);
    err4 = abs(x4-2);
    g1 = ((x1^2) + x1)/3;
    g2 = sqrt(3*x2 - 2);
    g3 = 3 - (2/x3);
    g4 = ((x4^2) - 2)/(2*x4 - 3);
    x1 = g1;
    x2 = g2;
    x3 = g3;
    x4 = g4;
    T1 = [T1; table(n, g1, err1)];
    T2 = [T2; table(n, g2, err2)];
    T3 = [T3; table(n, g3, err3)];
    T4 = [T4; table(n, g4, err4)];
end

T1.Properties.VariableNames = {'iteration', 'g1', 'error'};
T2.Properties.VariableNames = {'iteration', 'g2', 'error'};
T3.Properties.VariableNames = {'iteration', 'g3', 'error'};
T4.Properties.VariableNames = {'iteration', 'g4', 'error'};

disp(T1);
disp(T2);
disp(T3);
disp(T4);