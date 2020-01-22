function     RS=selectg(C,f,Xrate)
%   Selectg. Determines the selected pairs to be crossovered.
%   Written By Mohsen Rahmani

Np=size(C,1);
K=Xrate*Np*0.5;
RS=zeros(K,2);

p=zeros(Np,1);
for i=1:Np
    p(i)=(Np-i+1)*2/( Np*(Np+1));
end

q=zeros(Np,1);
q(1)=p(1);
for i=2:Np
    q(i)=q(i-1)+p(i);
end

for i=1:K
    b=rand();
    for j=1:Np
        if b < q(j);
            RS(i,1)=j;
            break;
        end
    end
    
    b=rand();
    for j=1:Np
        if b < q(j);
            if (RS(i,1)==j && j ~= Np)
                RS(i,2)=j+1;
            else
                RS(i,2)=j;
            end
            break;
        end
    end
    
end