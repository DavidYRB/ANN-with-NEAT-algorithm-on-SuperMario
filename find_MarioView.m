function MarioView = find_MarioView(X,Y,r,vectorize)
% MarioView is a 3d matrix, the first dimension is the ordinal number, 2nd
% and 3rd dimension compose the 2D machine vision.
MarioView = [];
% given coordinates of Mario and radius of sight, output the machine vision
if exist('binary_mapIdx.mat','file')
    load('binary_mapIdx.mat');
end
for i = 1: size(X,1)
     CurrentView = binary_mapIdx(Y(i)-r+10:Y(i)+r+10-1,X(i)-r+8:X(i)+r+8-1);
    if vectorize == 0 % keep the vision as matrix
        MarioView(:,:,i) = CurrentView;
    elseif vectorize == 1 % transform the vision matrices into vectors
        MarioView(i,:) = reshape(CurrentView',1,4*r^2);
    end
end
end