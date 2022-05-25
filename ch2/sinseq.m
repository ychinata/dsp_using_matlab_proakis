% 2022.5.19
% 正弦序列
% xycsee
% n1 < n2
function [x, n] = sinseq(n1, n2)
    n = n1: n2;
    x = 3*cos(0.1*pi*n+pi/3) + 2*sin(0.5*pi*n);
    