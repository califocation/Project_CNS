function VisualizeRandomDistee()
data = FK_formula(RandAngleGen(3000,1));
plot(data(:,1), data(:,2),'or','MarkerSize',0.4);
end