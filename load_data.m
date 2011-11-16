%Load the data with training values in pics/ folder
% num = number of training examples
% data file
% sx, sy = picture size. 
function [X, y] = load_data(num, data, sx, sy)  
	X = zeros(num,sx*sy);
	y = load(data);
	
	for i=1:num
		m = imread(strcat('pics/t',num2str(i),'.jpg'));
		X(i,:) = vec(m)';
	end;
	X = [ones(num,1),X];
end