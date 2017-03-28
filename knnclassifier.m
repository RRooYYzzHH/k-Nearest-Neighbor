function preds=knnclassifier(xTr,yTr,xTe,k);
% function preds=knnclassifier(xTr,yTr,xTe,k);
%
% k-nn classifier 
%
% Input:
% xTr = dxn input matrix with n column-vectors of dimensionality d
% xTe = dxm input matrix with n column-vectors of dimensionality d
% k = number of nearest neighbors to be found
%
% Output:
%
% preds = predicted labels, ie preds(i) is the predicted label of xTe(:,i)
%


% output random result as default (you can erase this code)

%currently assigning random predictions
%% fill in code here
    [~,n]=size(xTe);
    [indices, ~]=findknn(xTr,xTe,k);
    preds = zeros(1, n);
    
    temp = yTr(indices);
    for i = 1:1:n
        for m = 1:1:k
            [M, ~, C] = mode(temp(1:k-m+1, i));
            [s, ~] = size(C{1, 1});
            if s == 1
                preds(1, i) = M;
                break;
            end    
        end   
    end    

