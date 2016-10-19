function dist = distance2d(point1, point2)
% this function finds the distance between two coordinate points in 2D
dist = sqrt( (point1(:,1)-point2(:,1)).^2 + (point1(:,2)-point2(:,2)).^2 );
end