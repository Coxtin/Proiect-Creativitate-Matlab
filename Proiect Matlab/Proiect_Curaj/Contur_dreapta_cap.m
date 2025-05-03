b = [-1.27 -3 0.3 -3.4 -2 -2.3 ; 3.7 1.9 2.8 3.7 0.5 1.4];
f = ReprezentareCurbaBezier(t,b);
plot(f(1,:),f(2,:),'k','LineWidth',1.5);