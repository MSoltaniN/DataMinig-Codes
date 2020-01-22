function [ f ] = costf( C )
% costf. Calculates the cost for all chromosomes

%   Written By Mohsen Rahmani

Np=size(C,1);
f=zeros(Np,1);

for i=1:Np
    f(i)=costEq1(C(i,:));
end

end



