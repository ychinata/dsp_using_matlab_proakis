% Func: example 2.3
% Date: 2022.5.26
% Author:

n = 0:10;
x = stepseq(0,0,10)-stepseq(10,0,10);
[xe,xo,m] = evenodd(x,n);

% 原信号
subplot(2,2,1); stem(n,x); title('Rectangular pulse')
xlabel('n'); ylabel('x(n)'); axis([-10,10,0,1.2])
% 偶部分量
subplot(2,2,2); stem(m,xe); title('Even Part')
xlabel('n'); ylabel('xe(n)'); axis([-10,10,0,1.2])
% 奇部分量
subplot(2,2,4); stem(m,xo); title('Odd Part')
xlabel('n'); ylabel('xe(n)'); axis([-10,10,-0.6,0.6])
