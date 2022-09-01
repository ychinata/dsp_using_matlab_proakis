% Digital Signal Processing for Complete Idiots-David Smith (2017)
% 1.5.1 basic singals
% 2022.9.1

close all;
n = 5;

% 单位脉冲函数
t= -n:1:n; 
y=[zeros(1,n), ones(1,1), zeros(1,n)]; 
subplot(2,2,1); 
stem(t,y); 
ylabel('d(n)'); 
xlabel('unit impulse'); 

% 单位阶跃函数
t=-n:1:n; 
y1=[zeros(1,n), ones(1,1+n)]; 
subplot(2,2,2); 
stem(t,y1); 
ylabel('Amplitude'); 
xlabel('unit step'); 

% 单位爬坡函数
t=-n:1:n; 
subplot(2,2,3);
y1 = t(n+1:end);
y = [zeros(1,n), y1];
stem(t,y); 
ylabel('Amplitude'); 
xlabel('unit ramp'); 

% 指数函数
t=-n:1:n; 
a=2; 
y2=exp(a*t(n+1:end)); 
y = [zeros(1,n), y2];
subplot(2,2,4); 
stem(t,y); 
xlabel('Exponential'); 
ylabel('Amplitude'); 
