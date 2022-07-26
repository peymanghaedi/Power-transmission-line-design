d=30.42;
ice=0;
v0=45;
Wc=1.829;
Wice=(3.14)*(ice)*(d+ice)*10^-6*850
Wwind=(v0^2/16)*(d+2*ice)*10^-3
Wr=sqrt( (Wc+Wice)^2 + Wwind^2 )
