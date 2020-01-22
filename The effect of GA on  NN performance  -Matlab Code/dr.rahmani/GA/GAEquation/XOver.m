function     Co=XOver(C,RS)
%XOver. does the crossover over the selected pairs.
%   Written By Mohsen Rahmani


Np=size(C,1);
K=size(RS,1);

Nkeep=Np-K*2;

Co=zeros(size(C));

for i=1:Nkeep
    Co(i,:)=C(i,:);
end

for i=1:K
    A=C(RS(i,1),:);
    B=C(RS(i,2),:);
    [X,Y]=CrossOverEq(A,B);
    Co(Nkeep+(i-1)*2+1,:)=X;
    Co(Nkeep+(i-1)*2+2,:)=Y;
end




