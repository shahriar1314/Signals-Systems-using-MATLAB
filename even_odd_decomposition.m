u = @(t) double(t>=0);              %unit step function 
r = @(t) t.*(t>=0);                 %ramp function 

t=-5:0.001:5;       %interval 

%given piecewise function, x(t)
%x_t=r(t)-r(t-2)-u(t-2)*2;
%x_t=u(t);
x_t=r(t+1);
% x_t=-u(t+2)+u(t+1)+r(t+1)-r(t-1)-u(t-2);

%x(-t)
x_tp=fliplr(x_t);                   

x_even=0.5*(x_t+x_tp);    %even function 
x_odd=0.5*(x_t-x_tp);     %odd function 

%Energy calculation 
E_x = trapz(t,x_t.*x_t);
E_x_even = trapz(t,x_even.*x_even);
E_x_odd  = trapz(t,x_odd.*x_odd);

subplot(2,2,1);
plot(t,x_t,'r', 'linewidth',2);
xlim([-3 3])
ylim([-3 3])
grid on;
title('x(t)');

subplot(2,2,3);
plot(t,x_tp,'r', 'linewidth',2);
xlim([-3 3])
ylim([-3 3])
grid on;
title('x(-t)');

subplot(2,2,2);
plot(t,x_even,'r', 'linewidth',2);
xlim([-3 3])
ylim([-3 3])
grid on;
title('even part of x(t)');

subplot(2,2,4);
plot(t,x_odd,'r', 'linewidth',2);
xlim([-3 3])
ylim([-3 3])
grid on;
title('odd part of x(t)');