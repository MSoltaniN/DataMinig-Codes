function A=mutation (B,Range)
A=B;
Nvar= length(A);

ind=floor(rand()*Nvar)+1;

A(ind)=A(ind) + ( Range(2)-Range(1) ) * ( rand()-0.5 ); 


if A(ind) > Range (2)
    A(ind) = Range(2);
end

if A(ind) < Range (1)
    A(ind) = Range(1);
end