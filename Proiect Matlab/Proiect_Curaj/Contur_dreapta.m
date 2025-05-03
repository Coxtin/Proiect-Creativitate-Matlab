b = [-0.011 0.64 -0.166 0.47 ; -2.2 -0.76 0 0.22];
f = ReprezentareCurbaBezier(t,b);
plot(f(1,:),f(2,:),'k','LineWidth',1.5);