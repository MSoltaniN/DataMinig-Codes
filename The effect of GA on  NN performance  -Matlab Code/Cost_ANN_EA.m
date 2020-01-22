function Cost = Cost_ANN_EA(XX,Xtr,Ytr,Network)



Cost = zeros(size(XX,1),1);

for ii = 1:size(XX,1)

    X = XX(ii,:);
    Network = ConsNet_Fcn(Network,X);
        % for k = 1:size(Xtr,1)
        %        IW = Network.IW{1,1}; 
        %        %LW = Network.LW{2,1}; 
        %        b1 = Network.b{1,1};
                 %b2 = Network.b{2,1};    
        %         
        %    YtrNet(k,1)= Xtr(k,1) * IW(1) +Xtr(k,2) * IW(2)+Xtr(k,3) * IW(3)+b1;
        % end
    YtrNet = sim(Network,Xtr')';
    C = mse(YtrNet - Ytr); 
    Cost(ii,1) = C;    
end
end
