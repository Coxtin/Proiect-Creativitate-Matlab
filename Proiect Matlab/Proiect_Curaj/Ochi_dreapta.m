b = [1.426 1 -0.1 0.6; 2.587 1.2 2.9 4];
f = ReprezentareCurbaBezier(t,b);
plot(f(1,:),f(2,:),'k','LineWidth',1.5);