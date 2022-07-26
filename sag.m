A=547.07;                                    
UTS=15300;                                   
E=7000;                                     
alfa=19.3*10^-6; 
Hstd=21.3;
Clerianse=8;
inslength=12*0.146;
Wc=1.8290;

case_1=[0,45,0,50,4.2624];
case_2=[0,28,15,40,2.3595];
case_3=[0,0,25,20,1.8290];
case_4=[0,0,-5,25,1.8290];
case_5=[0,0,85,25,1.8290];
case_6=[0,24.6475,0,50,2.1608];
case_7=[0,31.8198,0,50,2.6592];
case_8=[6 ,22, -5, 50, 2.7323];
case_9=[0 ,45, 0, 50, 4.2426];
cases=[case_1;case_2;case_3;case_4;case_5;case_6;case_7;case_8;case_9];
%--------------------------------------------------------------------------------------------------------------%
for S=10:10:500                                                          
    m=0;
    for i=1:9
        if(m==1)
            break;
        end
        T1=cases(i,3);
        W1=cases(i,5);
        H1=(cases(i,4)/100)*UTS;
        for j=1:9
           m=0;
           H=[1 ((A*E*S^2*W1^2)/(24*H1^2))+alfa*A*E*(cases(j,3)-T1)-H1 0 -(A*E*S^2*cases(j,5)^2)/24];
           R=real(roots(H));
           for d=1:3
               if(R(d)>=0)
                   H_2(j)=R(d);
               end
           end
           if (H_2(j)>vpa((cases(j,4)*UTS/100)))
               break;
           else
               m=1;
           end
        end
    end
    
    S_T(S/10,:)=[S H_2];
end
 disp(S_T);
 
 
Sagmax=Hstd-Clerianse-inslength
k=50;
%----entekhab span-----%
for S=500:-10:10
    flesh=(S^2*Wc)/(8*S_T(k,6)) ; 
if(flesh<=Sagmax)
    break;
 
end
k=k-1;
end
S
flesh











