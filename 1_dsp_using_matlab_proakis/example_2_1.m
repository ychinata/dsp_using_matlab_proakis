% 2022.5.23
% xycsee
% Func: example 2.1

clear; clc; close all;

% a. x(n) = 2δ(n+2)-δ(n-4)
n1 = -5;
n2 = 5;
n = n1 : n2;
x = 2 * impseq(-2, n1, n2) - impseq(4, n1, n2);
subplot(2,2,1);
stem(n, x);
title('Example.2.1a')
xlabel('n'); ylabel('x(n)')

% b. x(n) = n[u(n)−u(n−10)]+10e(−0.3(n−10))*[u(n−10)−u(n−20)]
n1 = 0;
n2 = 20;
n = n1 : n2;
x1 = n .* (stepseq(0,n1,n2) - stepseq(10,n1,n2));
x2 = 10 * exp(-0.3*(n-10)) .* (stepseq(10,n1,n2) - stepseq(20,n1,n2));
x = x1 + x2;
subplot(2,2,2);
stem(n, x);
title('Example.2.1b')
xlabel('n'); ylabel('x(n)')

% c. x(n) = cos(0.04πn)+0.2w(n), 0 ≤ n ≤ 50
n1 = 0;
n2 = 50;
n = n1 : n2;
x = cos(0.04*pi*n) + 0.2*randn(size(n));
subplot(2,2,3);
stem(n, x);
title('Example.2.1c')
xlabel('n'); ylabel('x(n)')

% d. x(n) = {..., 5, 4, 3, 2, 1, 5↑, 4, 3, 2, 1, 5, 4, 3, 2, 1, ...}; −10 ≤ n ≤ 9
n = -10:9;
x = 5:-1:1;
xtilde = x' * ones(1,4);
xtilde = (xtilde(:))';
subplot(2,2,4);
stem(n, xtilde);
title('Example.2.1d')
xlabel('n'); ylabel('x_{tilde}(n)')


