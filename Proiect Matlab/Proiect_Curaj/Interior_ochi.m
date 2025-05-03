b = {[-0.3425 -0.194 -0.141 -0.512 -0.532 -0.3425 ; 2.7 2.747 3.424 3.323 2.894 2.7],...
    [0.9 1.136 0.827 0.732 0.742 0.9; 3.078 3.35 3.721 3.434 3.114 3.078],...
    [-0.297 -0.476 -0.369 -0.218 -0.297 ; 3.133 3.122 2.842 2.8575 3.133],...
    [0.939 0.784 0.843 0.987 0.939 ; 3.4193 3.457 3.174 3.186 3.4193],...
    };

f = ReprezentareCurbaBezier(t,b{1});
fill(f(1,:),f(2,:),'k','LineWidth',1.5);

f = ReprezentareCurbaBezier(t,b{2});
fill(f(1,:),f(2,:),'k','LineWidth',1.5);

f = ReprezentareCurbaBezier(t,b{3});
fill(f(1,:),f(2,:),'w','LineWidth',1.5);

f = ReprezentareCurbaBezier(t,b{4});
fill(f(1,:),f(2,:),'w','LineWidth',1.5);