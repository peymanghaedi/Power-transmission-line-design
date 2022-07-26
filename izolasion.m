hmax=40;
K=4;
IKL=12;
PIPRIM=0.35;
M=43*sqrt(hmax/25)*(IKL/32.5);
P=(K/(M*PIPRIM))*100


H=1000;
Ilt=13;
Em=230;
zt=33;
k0=1.31;
k=0.9;
k1=0.8;
c=0.3;
alfa=1.1+((H-1000)/10000);
V50=alfa/k0*( Ilt*(k-c)*zt+ (sqrt(2/3))*Em )
z=(V50-80)/0.55;
z0=z/k1;
h=146;
N=z0/h
L=(1.115*z)+21

Un=230;
OVF=1.1;
FF=1.4;
HF=1.04;
CF=1.2;
A=1;
RAD=0.997-0.106*(A);
E=Un*(sqrt(2)/sqrt(3))*OVF*FF*HF*CF*(1/RAD);
enheraf=0.05;
Vcfo=E/(1-3*enheraf);