%Train the classifier using normal equation
function theta = train(num,data,sx,sy)
	[X,y] = load_data(num,data,sx,sy); %returns with bias 
	initial_theta = zeros(size(X,2),1);
	% theta = train_normal(X,y);
	options = optimset('GradObj', 'on', 'MaxIter', 400);
	% Run fminunc to obtain the optimal theta
	% This function will return theta and the cost
	[theta, cost] = fminunc(@(t)(cost_function(t, X, y)), initial_theta, options);
	save('theta.mat','theta');
end;
