b = {[2.954 2.112 1.426 ; 2.0507 2.693 2.587],...
    [1.426 1.44 1.16 ; 2.587 3.326 3.75],...
    };

for i = 1:length(b)
    f = ReprezentareCurbaBezier(t,b{i});
    plot(f(1,:),f(2,:),'k','LineWidth',1.5);
end