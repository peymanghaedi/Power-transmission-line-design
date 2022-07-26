
A=226.2;                                    %Cross Section Area of Conductor(sq.mm)
UTS=8137;                                   %Ultimate Strength of Conductor(kg)
E=8157;                                     %Moduluse of Elasticity(kg/sq.mm)
ALFA=17.8*10^-6;                            %Coefficient of Linear Expansion(1/centigrade)

% For each case : case=[Ice Thickness(mm),Wind Speed(m/s),Temperature(Centigrade),Tension limit(%UTS),Unit Weight(kg/m)];%
case_1=[0,45,0,50,2.6112];
case_2=[0,28,15,40,1.2747];
case_3=[0,0,25,20,0.8420];
case_4=[0,0,-5,25,0.8420];
case_5=[0,0,85,25,0.8420];
case_6=[0,24.6475,15,50,1.1220];
case_7=[0,31.8198,15,50,1.4954];
%Make a matrix of cases according to their number
L_C=[case_1;case_2;case_3;case_4;case_5;case_6;case_7];
%End of input data.\\
%--------------------------------------------------------------------------------------------------------------%
for S=10:10:300                                                                %S=Span(m)
    P=0;
    for i=1:7
        if(P==1)
            break;
        end
        T1=L_C(i,3);
        W1=L_C(i,5);
        H1=(L_C(i,4)/100)*UTS;
        for j=1:7
           P=0;
           H=[1 ((A*E*S^2*W1^2)/(24*H1^2))+ALFA*A*E*(L_C(j,3)-T1)-H1 0 -(A*E*S^2*L_C(j,5)^2)/24];
           R=real(roots(H));
           for k=1:3
               if(R(k)>=0)
                   H_2(j)=R(k);
               end
           end
           if (H_2(j)>vpa((L_C(j,4)*UTS/100)))
               break;
           else
               P=1;
           end
        end
    end
     S_T(S/10,:)=[S H_2];
end
%--------------------------------------------------------------------------------------------------------------%
%//Display 
%Note the number of cases in the display
disp("***********************************************************************************");
disp("     Span     H_Case1   H_Case2   H_Case3   H_Case4   H_Case5   H_Case6   H_Case7")
disp(S_T); 
%//