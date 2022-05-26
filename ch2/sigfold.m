% 2022.5.26
% xycsee
% 信号反转

function [y,n] = sigfold(x,n)
    % implements y(n) = x(-n)
    % -------------------------
    % [y,n] = sigfold(x,n)
    %
    y = fliplr(x);
    n = -fliplr(n);