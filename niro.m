
Swe=430;
n=2;
d=30.42; 
Vin=5.2;
ni=12;
ilns=1;
Vf=;
k=0.4;
case_1=[0,45,0,50,4.2624];
case_2=[0,28,15,40,2.3595];
case_3=[0,0,25,20,1.8290];
case_4=[0,0,-5,25,1.8290];
case_5=[0,0,85,25,1.8290];
case_6=[0,24.6475,0,50,2.1608];
case_7=[0,31.8198,0,50,2.6592];
case_8=[6 ,22, -5, 50, 2.7323];
cases=[case_1;case_2;case_3;case_4;case_5;case_6;case_7;case_8];

case_t=[0,6];
case_SF_v_t_w=[1.1,1.5; 1.1 , 1.65; 1.1,2.5];
case_V0=[45,22];
case_Hl=[6615.4,4701.5];
%-------------------------Vertical load-----------------------------------------%
                 %--- weight lenght----%
                     Vc=Swe*Wc*n;
                 %---weight ice----%
              
                      for i=1:2
                     Wice=(case_t(1,i)*(d+case_t(1,i)))*(3.14)*10^-6*850;
                     Vi=Swe*Wice*n;
                       end
                 %--- weight lns----%
                 
                    Vfi=(Vin*ni+Vf)*ilns;
         %-------------------Vertical load total------------%
                for j=1:2
                  V=(Vc+Vi+Vfi)*case_SF_v_t_w(1,j);
                end
                
                
                
%------------------------Transversal load-----------------------------------------------------%
                     %------Transversal pressure wind to wire -----%
                        for a=1:2 
                        Tw=0.0625*case_V0(1,a)*(2*case_t(1,a)+d)*Swe*10^-3;
                        end
                     
                     %-------Transversal pressure wind to lns----%
                           for d=1:2
                          Twf=0.0625*case_V0(1,a)*Sft*12;
                          Sft=12*0.146*0.255*0.75;
                          end
                     %-------Transversal tension to wire----%
                         for f=1:2
                         Tt=2*case_Hl(1,f)*sin(3/2)*n; 
                         end
             %---------------------Transversal load total---------------%
                        for r=1:2;   
                        T=(Tw+Twf)*case_SF_v_t_w(3,r)+Tt*case_SF_v_t_w(2,r);
                        end

                    
%------------------------Broken Wire---------------------------------------------------%
                        Vcb=Swe*Wc*(n-k*nb);
                        
                        Wiceb=3.14*0*(d+0)*10^(-6)*850;
                        Vib=Swe*Wiceb*(n-k*nb);
                        
                        Vfib=Vfi;

                       Twb=0.0625*45^2*d*Swe*(n-0.5*nb)*10^-3;
                        
                       Twfb=Twf;
                       
                       Ttb=2*Hb*sin(3/2)*(n-0.5*nb);
                       
                       
                       
                       









