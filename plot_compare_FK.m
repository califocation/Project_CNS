function plot_compare_FK(net, angles1, angles2)

vals1 = FK_formula(angles1);
%vals2 = FK_formula(angles2);
vals2 = net(angles2');

nos  = 1:1000;
vals1 = vals1';
figure; hold on;
plot( vals1(1,nos), vals1(2,nos), 'or', 'MarkerSize', 8);
plot(vals2(1,nos), vals2(2,nos), '*b', 'MarkerSize', 3);
xlabel('x-axis'); ylabel('y-axis'); title('compare for FK');
legend('target','predicted');
hold off;
end


