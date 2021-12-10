u = @(t) double(t>=0);              %unit step function 
r = @(t) t.*(t>=0);                 %ramp function 

t=-3:0.08:3;


%  x=u(t);
%  x=2*u(t);
% x=u(t-1);

%  x=r(t);
% x=2*r(t);
% x=r(t+1);

%x=r(t+1)-r(t)-u(t-2);
x=r(t)-r(t-1)-u(t-1);

figure(1)
ax=axes;
set(ax,'xlim',[-4 4], 'ylim',[-5 5]);
grid on;
hold (ax)
comet(ax,t,x,0.5);

figure(2)
plot(t,x,'r', 'linewidth',2);
grid on;
xlim([-4 4]);
ylim([-5 5]);