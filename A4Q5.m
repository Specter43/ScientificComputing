a = 3.592;
b = 0.04267;
R = 0.082054;
T = 300;
Tb = table;
for p = [1, 10, 100]
    v = (R*T) / p;
    left = v - 1;
    right = v + 1;
    zero_interval = [left right];
    f = @(v)(p + a/(v^2))*(v-b) - R*T;
    v_sol = fzero(f, zero_interval);
    Tb = [Tb; table(p, v, v_sol)];
end

Tb.Properties.VariableNames = {'pressure', 'solution_from_initial_guess', 'solution_from_fzero'};

disp(Tb);