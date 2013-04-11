#!/usr/bin/octave -qf

function ans = test(image)
	load('theta.mat');
	m = imread(image);
	m = vec(m)';
	X = ones(1,size(m,2)+1);
	X(1,2:end) = m;
	ans = sigmoid(X*theta) > 0.5;
end


arg_list = argv();

if (nargin < 1)
	printf("Usage: ./<script> <image>");
else
	ans = test(arg_list{1});
	
	if (ans > 0)
		printf("It's an X");
	else
		printf("Not an X");
	endif
endif
