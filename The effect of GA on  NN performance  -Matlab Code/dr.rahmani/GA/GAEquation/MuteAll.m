function    C=MuteAll(C,Mrate,Range)
%MuteAll. does mutation over selected chromosomes
%   Written By Mohsen Rahmani

Np=size(C,1);
for i=1:Np
    if rand()<Mrate
        C(i,:)=mutation(C(i,:),Range);
    end
end

end