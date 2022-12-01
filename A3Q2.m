a = sqrt(2)/2;

b=[0;10;0;0;0;0;0;15;0;20;0;0;0];

A = [0 1 0 0 0 -1 0 0 0 0 0 0 0;
     0 0 1 0 0 0 0 0 0 0 0 0 0;
     a 0 0 -1 -a 0 0 0 0 0 0 0 0;
     a 0 1 0 a 0 0 0 0 0 0 0 0;
     0 0 0 1 0 0 0 -1 0 0 0 0 0;
     0 0 0 0 0 0 1 0 0 0 0 0 0;
     0 0 0 0 a 1 0 0 -a -1 0 0 0;
     0 0 0 0 a 0 1 0 a 0 0 0 0;
     0 0 0 0 0 0 0 0 0 1 0 0 -1;
     0 0 0 0 0 0 0 0 0 0 1 0 0;
     0 0 0 0 0 0 0 1 a 0 0 -a 0;
     0 0 0 0 0 0 0 0 a 0 1 a 0;
     0 0 0 0 0 0 0 0 0 0 0 a 1;];
 f = A \ b
 condition_number_A = cond(A, inf);
 infinity_norm_b = norm(b, inf);
 b_hat = A * f;
 r = b_hat - b;
 infinity_norm_r = norm(r,inf);
 upper_bound = condition_number_A * (infinity_norm_r/infinity_norm_b)
 lower_bound = (1/condition_number_A) * (infinity_norm_r/infinity_norm_b)