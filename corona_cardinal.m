A=515.43;
k=85;
t=0.6;
isc=(A*k)/sqrt(t);

%% corona
D=763;
s=45;
r=1.521;
f=50;
p=63;
t=40;
m=.8;
v=230;
vp= v/sqrt(3);
Emax=(vp/ (m*r* log(D/r)))
delta = (3.92 * p)/(273+t);
vcr=21.1 * m*(delta)*r*log(D/r)
a=vp/vcr
F=a*0.1 - 0.063;

    if a>1.8
        Pc = (3.244*((f+25)/delta)*sqrt(r/D)*(Vp-Vcr)^2)*1e-5
    elseif 1<a<1.8
        Pc = 21.1*3*f*F*((vp/log10(D/r))^2)*10^-6
        
    else a<1
        Pc = 0
        end
