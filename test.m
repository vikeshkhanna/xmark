function ans = test(image)
	load('theta.mat');
	m = imread(image);
	m = vec(m)';
	X = ones(1,size(m,2)+1);
	X(1,2:end) = m;
	%ans = sigmoid(X*theta)>0.5;
	ans = sigmoid(X*theta) > 0.5;
end
	
	