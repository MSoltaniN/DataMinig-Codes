%%% main
%%% GA program for Minimization 
%%% the formula in Cost function



clear

Eps=0.000001;
count=0;
PreF=0;


NITER=2000;%1000;
Npop=10;
Nvar=3;
XRate=0.8;
Mrate=0.2;
Range= [-10 10];

C=rand(Npop,Nvar) * (Range(2) - Range(1) ) + Range(1) ;
% RSarr=[];

for i=1:NITER
    f=costf(C);
    [C,f]=sortg(C,f);
    
            % Termination Condition
            if (  abs( f(1) - PreF ) < Eps )
                count=count+1;
            else
                count=0;
            end
            if count==5
                C(1,:)
                costEq1(C(1,:))
                i
                break;
            end
            PreF=f(1);
    
    %  fArr(i)=f(1);
    RS=selectg(C,f,XRate);
    
    
    % RSarr= [RSarr RS];
    
    C=XOver(C,RS);
    
    C=MuteAll(C,Mrate,Range);
end