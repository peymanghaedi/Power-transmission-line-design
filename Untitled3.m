db2c2=4.9;
da2b2=4.9;
da1b1=da2b2;
db1c1=db2c2;
db2c1=9.9;
db1c2=db2c1;
da2b1=9.9;
da1b2=da2b1;
da2c2=9.8;
da1c1=da2c2;
da1c2=8.6;
da2c1=da1c2;

dAB=nthroot(da1b1*da1b2*da2b1*da2b2,4);
dBC=nthroot(db1c1*db1c2*db2c1*db2c2,4);
dAC=nthroot(da1c1*da1c2*da2c1*da2c2,4);
gmd= nthroot(dAB*dBC*dAC,3);


ds=.11332;
da1a2=13;
dSA=nthroot(ds *da1a2,2);
db1b2=8.6;
dSB=nthroot(ds *db1b2,2);
dc1c2=13;
dSC=nthroot(ds *dc1c2,2);
gmrl=nthroot(dSA*dSB*dSC,3);
L=.2*(log (gmd/gmrl))

r=0.1476;
rA=nthroot(r * da1a2 , 2);
rB=nthroot(r * db1b2 , 2);
rC=nthroot(r * dc1c2 , 2);
gmrc=nthroot(rA*rB* rC, 3);
C=(2*pi*8.85*10^-12)/(log(gmd/gmrc))