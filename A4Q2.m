p = [5, 4, 9, 10, 6, 8, 10, 9, 10];
x = [1:10]';
y1 = perm_a(p, x);
q = perm_b(p);
y2 = perm_c(q, x);

fprintf('y1 = (\n');
fprintf('%i\n', y1);
fprintf(')\n\n');

fprintf('q = ( ');
fprintf('%i ', q);
fprintf(')\n\n');

fprintf('y2 = (\n');
fprintf('%i\n', y2);
fprintf(')\n');

function f1 = perm_a(p, x)
    for i = 1:length(p)
        one = x(i);
        x(i) = x(p(i));
        x(p(i)) = one;
    end
    f1 = x;
end

function f2 = perm_b(p)
    q_init = [1:length(p)+1];
    for i = 1:length(p)
        two = q_init(i);
        q_init(i) = q_init(p(i));
        q_init(p(i)) = two;
    end
    f2 = q_init;
end

function f3 = perm_c(q, x)
    three = x;
    for i = 1:length(q)
        three(i) = x(q(i));
    end
    f3 = three;
end