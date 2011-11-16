%Train the classifier using fminunc
function [theta,cost] = train_fminunc(X,y,sx,sy)
	options = optimset('GradObj', 'on', 'MaxIter', 400);
	% Run fminunc to obtain the optimal theta
	% This function will return theta and the cost
	initial_theta = zeros(sx*sy + 1, 1);
	[theta, cost] = fminunc(@(t)(cost_function(t, X, y)), initial_theta , options);
end;
