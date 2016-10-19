function plot_compare_IK(IKnet)
angle = RandAngleGen(1000,1);
coord = FK_formula(angle);
test1=IKnet(coord');
test = FK_formula(test1')';

coord = coord' ;

figure; hold on;
plot(coord(1,:), coord(2,:), 'or', 'MarkerSize', 9);
plot( test(1,:), test(2,:), '*', 'MarkerSize', 4);
xlabel('x-axis'); ylabel('y-axis'); title(' compare for IK ');
legend('targets','predicted');
hold off;
end

