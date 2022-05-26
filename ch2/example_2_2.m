% 2022.5.26
% xycsee
% Func: example 2.2

clear; clc; close all;
n = -2:10; 
x = [1:7,6:-1:1];
 
% a. x1(n)=2x(n − 5) − 3x(n + 4).
[x11,n11] = sigshift(x,n,5); 
[x12,n12] = sigshift(x,n,-4);
[x1,n1] = sigadd(2*x11,n11,-3*x12,n12);
subplot(2,1,1); stem(n1,x1); 
title('Sequence in Example 2.2a')
xlabel('n'); ylabel('x1(n)');

% b. x2(n) = x(3 - n) + x(n) x(n - 2).
[x21,n21] = sigfold(x,n); % 先反转 x(-n)
[x21,n21] = sigshift(x21,n21,3); % 平移x(-(n-3))
[x22,n22] = sigshift(x,n,2); % x(n-2) 
[x22,n22] = sigmult(x,n,x22,n22);
[x2,n2] = sigadd(x21,n21,x22,n22);
subplot(2,1,2); stem(n2,x2); 
title('Sequence in Example 2.2b')
xlabel('n'); ylabel('x2(n)');
