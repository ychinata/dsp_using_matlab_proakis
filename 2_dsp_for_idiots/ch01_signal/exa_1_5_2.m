% Digital Signal Processing for Complete Idiots-David Smith (2017)
% 1.5.1 basic singals
% 2022.9.1

n = 5;
t = -n:1:n;
% 正弦信号
subplot(2,1,1);
y = sin(t);
stem(t,y)
xlabel('n');
ylabel('Amplitude');
title('Sine Signal')

% 余弦信号
subplot(2,1,2);
y = cos(t);
stem(t,y)
xlabel('n');
ylabel('Amplitude');
title('Cosine Signal')

