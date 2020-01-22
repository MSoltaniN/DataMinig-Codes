function [ C,f ] = sortg ( C,f )
% sortg. A function sorts C based on f.

% Written By Mohsen Rahmani
NQ=size(C,2);

A=[C f];


A=sortrows(A,NQ+1);

C=A(:,1:NQ);
f=A(:,NQ+1);

end