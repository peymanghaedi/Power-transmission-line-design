D=19.53;
A=226.2;
UTS=8137;
E=8157;
ALFA=17.8*10^-6;
Wc=0.842;
ROice=913;
Tm=15;
Ti=15;

mode{1}=[0 45 0 50];
mode{2}=[0 28 15 40];
mode{3}=[0 0 25 20];
mode{4}=[0 0 -5 25];
T=55;
Tmax=Tm+Ti+T;
mode{5}=[0 0 Tmax 25];
V30=sqrt(0.3*mode{1} (2)^2);
V50=sqrt (0.5*mode{1} (2)^2);
mode{6}=[0 V30 15 50];
mode{7}=[0 V50 15 50];

