function Cost = CostFunction(Pop)
PopSize = size(Pop,1);

for ii = 1:PopSize
    X1 = Pop(ii,1);
    X2 = Pop(ii,2);    
    Cost(ii,1) = 20 + X1.^2 + X2.^2 - 10 * (cos(2*pi*X1) + cos(2*pi*X2));    
end