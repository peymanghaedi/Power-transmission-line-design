T2=75;
a=.004;
R20=.0597;
syms RT2
eqn=RT2==R20*[1+a*(T2-20)];
RT2=solve (eqn,RT2);
RT2= vpa(RT2,5)
r=RT2*1.6
u=1;
f=50;
syms x
x=0.063598*sqrt(u*f/r)