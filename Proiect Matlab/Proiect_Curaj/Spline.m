figure;
p = [2.1754 -1.014 1.883 2.554 5.38 2.59 3.2 2.1754 ; 0.578 1.357 1.883 1.7 3.436 1.505 0.195 0.578];
b(:,1)=p(:,1);
b(:,2)=p(:,2);
b(:,3)=p(:,3);
b(:,4)=(p(:,3)+p(:,4))/2;
b(:,5)=p(:,4);
b(:,6)=p(:,5);
b(:,7)=(p(:,5)+p(:,6))/2;
b(:,8)=p(:,6);
b(:,9)=p(:,7);
b(:,10)=p(:,8);
%obținerea curbei spline
t=0:0.001:1;
B0=(1-t).^3;
B1=3.*(1-t).^2.*t;
B2=3.*(1-t).*t.^2;
B3=t.^3;
B=[B0;B1;B2;B3];
i=1;
index=1;
plot(p(1,:),p(2,:));
while index<=3
    hold on;
    f=b(:,i:i+3)*B;
    plot(f(1,:),f(2,:),'k'); %reprezentarea curbei spline
    index=index+1;
    i=i+3;
end
title('Curba spline aplicata pe nas');
