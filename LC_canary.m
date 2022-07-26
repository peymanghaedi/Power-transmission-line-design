dab=6;
dbc=6;
dac=12;
gmd= nthroot(dab*dbc*dac,3);
gmrl=0.11332;
gmrc=0.1476;
L=2*(10^-7) * (log(gmd/gmrl))
C=(2*pi*8.85*10^-12)/(log(gmd/gmrc))

