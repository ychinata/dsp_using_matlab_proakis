% 2022.5.17
% 单位阶跃序列
% xycsee
% n1 <= n0 <= n2
function [x, n] = stepseq(n0, n1, n2)
    n = n1: n2;
    x = (n - n0) >= 0;