d=30.38;
span=420;
n=2;
Wc=2.585;
k=0.4;
nb=1;
Sft=0.75*0.146*17*0.255;
is=17;
casei=[15,0,25];
casev=[20,40,0]; 
caseh=[ 6.8567 ,3.7601, 9.4500 ];
casesf=[1.5,1.1,1.1 ; 1.65,1.1,1.1 ; 2.5,1.1,1.1];
%******************************************************start
                        %  wind and ice 
%niro amodi vazn sim
VCwind= span*Wc*n;

% niro amodi vazn yakh 
Wicew=(3.14)*(casei(1,1))*(d+casei(1,1))*10^-6*850;
VIwind=span*Wicew*n;

%  niro amodi vazn maghare 
vin=5.2;
ni=17;
iset=1;
vf=2;
VFIwind=vin*vf*ni*iset;

% niro amodi kol
Vwind=(VCwind+VIwind+VFIwind)*casesf(1,1);
%........................................................

%niro ofoghi bad bar sim
TWwind=0.0625*casev(1,1)^2*(d+2*casei(1,1))*span*n*10^-3;

% niro ofoghi bad bar zangir maghare

TWFwind=0.0625*casev(1,1)^2*Sft*is;

%  niro ofoghi keshesh sim.............
Ttwind=2*caseh(1,1)*sin(3/2)*n ;

%niro ofoghi kol 
Twind=(TWwind+TWFwind)*casesf(3,1)+Ttwind*casesf(2,1);
%--------------------------------------------------------------------------
                        % high wind %
%niro amodi vazn sim
VChigh= span*Wc*n;

% niro amodi vazn yakh 
Wicew=(3.14)*(casei(1,2))*(d+casei(1,2))*10^-6*850;
VIhigh=span*Wicew*n;

%  niro amodi vazn maghare 
vin=5.2;
ni=17;
iset=1;
vf=2;
VFIhigh=vin*vf*ni*iset;

% niro amodi kol
Vhigh=(VChigh+VIhigh+VFIhigh)*casesf(1,2);

%........................................................

%niro ofoghi bad bar sim
TWhigh=0.0625*casev(1,2)^2*(d+2*casei(1,2))*span*n*10^-3;

% niro ofoghi bad bar zangir maghare
Sft=0.75*0.146*17*0.255;
is=17;
TWFhigh=0.0625*casev(1,2)^2*Sft*is;

%  niro ofoghi keshesh sim.............
Tthigh=2*caseh(1,2)*sin(3/2)*n ;

%niro ofoghi kol 
Thigh=(TWhigh+TWFhigh)*casesf(3,2)+Tthigh*casesf(2,2);

%--------------------------------------------------------------------------   
                          % BROKEN WIRE  %

% niro amodi vazn sim dar 
vcp= span*Wc*(n-k*nb);
% niro amodi vazn yakh
Wicep=(3.14)*(casei(1,3))*(d+casei(1,3))*(10^-6)*850 ;
vip=span*Wicep*((n-k)*nb);
% niro amodi vazn maghare 
vfip=vin*vf*ni*iset;

    %   niro amodi kol
    Vp=(vcp+vip+vfip)*casesf(1,3);
....................................................
% niro ofoghi bad bar sim
Twp=0;
% niro ofoghi bad bar zangir maghare
Twfp=0.0625*casev(1,3)^2*Sft*is;
% niro ofoghi keshesh sim
Ttp=2*caseh(1,3)*sin(3/2)*(n-nb) ;

         %niro ofoghi kol 
        Tp=(Twp+Twfp)*casesf(3,3)+Ttp*casesf(2,3);
%-------------------------------------------------------------------------------
TOTAL=['vertical'        ,Vwind          Twind       Vp;'Transvers'        ,Vhigh          Thigh       Tp];
disp('  counductor load   wind and ic     high wind     broken');
disp(TOTAL);




















