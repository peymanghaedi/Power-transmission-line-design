p=250;
vr=230;
ir=p/(sqrt(3)*vr*0.8);
w=2*pi*50;
z=(0.03695)+(1i*w*3.7914e-07);
y=1i*(w*3.1577e-11);
zc=sqrt(z/y);
gama=sqrt(z*y);
alfa=real(gama);
beta=imag(gama);
a=cosh(alfa*180)*cos(beta*180)+1i *(sinh(alfa*180)* sin(beta*180));
b=zc*(sinh(alfa*180)*cos(beta*180)+ 1i* cosh(alfa*180)*sin(beta*180));
c=(1/zc)*(sinh(alfa*180)*cos(beta*180)+ 1i* cosh(alfa*180)*sin(beta*180));
d=a;
teta= - acos(.8);
vs=a*(vr/sqrt(3))+b*(ir*(cos(teta)+sin(teta)*1i));
is=c*(vr/sqrt(3))+d*(ir*(cos(teta)+sin(teta)*1i));
deltau=((abs(vs)-(vr/sqrt(3)))/(vr/sqrt(3)))*100