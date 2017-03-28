function output=analyze(kind,truth,preds)	
% function output=analyze(kind,truth,preds)		
%
% Analyses the accuracy of a prediction
% Input:
% kind='acc' classification error
% kind='abs' absolute loss
% (other values of 'kind' will follow later)
% 

switch kind
	case 'abs'
		% compute the absolute difference between truth and predictions
		%fill in the code here
        [~,length]=size(truth);
        diff = abs(preds - truth);
        d = sum(diff);
        output = d / length;
		
	case 'acc' 
		%% fill in code here
        [~,length]=size(truth);
        output = sum(truth==preds) / length;
end;

