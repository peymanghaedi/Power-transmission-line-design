
s=2;
k1=1.1;
k2=2.5;
En=230;
h=.146;
A=1;
Em=En*sqrt(2/3)*k1*k2;
RAD=0.997-0.106*(A);

khata=10;
while khata > 0.02
    n=1.12-0.12*(s);
    CFO=(Em*1.03)/(0.85*0.96*(RAD)^n)
    snew=7.3/( (3830/CFO)-1 ) 
    
    khata =abs (snew-s);
    s=snew
    N=(s*1.05)/h
end
