b = [-1.087 -1.04 0.99 -0.346 ; 3.326 -0.05 2.415 3.871];
f = ReprezentareCurbaBezier(t,b);
plot(f(1,:),f(2,:),'k','LineWidth',1.5);