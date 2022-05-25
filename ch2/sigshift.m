% 2022.5.19
% xycsee
% 信号移位

function [y,n] = sigshift(x,m,k)
    % implements y(n) = x(n-k)
    % -------------------------
    % [y,n] = sigshift(x,m,k)
    %
    n = m+k; y = x;