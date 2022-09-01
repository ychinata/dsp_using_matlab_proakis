% 2022.5.17
% xycsee

% 1单位样本序列
[x, n] = impseq(0, -5, 5);
display(x);
% stem(n, x)
% title("单位样本序列")

% 2单位阶阶跃序列
[x, n] = stepseq(0, -5, 5);
display(x);
% stem(n, x)
% title("单位阶跃序列")

% 3实值指数序列
n = 1:10;
x = (0.9).^n;
% stem(n, x)
% title("实值指数序列")

% 4复值指数序列
n = 1:10;
x = exp((2 + 3j) * n);
% stem(n, real(x), 'r')
% hold on
% stem(n, imag(x), 'b')
% legend(["real", "imag"])
% title("复值指数序列")

% 5正弦序列
[x, n] = sinseq(1, 20);
stem(n, x)
title("正弦序列")

% 7周期序列
n = 1:5;
xtilde = n' * ones(1, 3);
xtilde = xtilde(:);
xtilde = xtilde';
