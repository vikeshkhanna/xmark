%Train the classifier using normal equation
function [theta] = train_normal(X,y)
	theta = pinv(X'*X)*X'*y;
end;
