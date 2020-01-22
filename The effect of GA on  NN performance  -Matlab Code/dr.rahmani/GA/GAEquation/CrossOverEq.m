function   [X,Y]=CrossOverEq(A,B)
Nvar=length(A);

X=zeros(size(A));
Y=zeros(size(A));

Beta=0.75;
for i=1:Nvar
    X(i)= Beta     *A(i)   +     (1-Beta)  *B(i);
    Y(i)= (1-Beta) *A(i)   +      Beta     *B(i);
    Beta=1-Beta;
end