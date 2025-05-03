figure;
title('Algoritmul lui Casteljeau, folosit pe o portiune din picior pentru t = 1/2');
b = [-2.424 -0.91 -0.17 -0.603 0.77; -3.346 -3.866 -2.693 -2.654 -2.05];
t = 0:0.01:1;
B0 = (1 - t) .^ 4;
B1 = 4 * (1 - t) .^ 3 .* t;
B2 = 6 * (1 - t) .^ 2 .* t .^ 2;
B3 = 4 * (1 - t) .* t .^ 3;
B4 = t .^ 4;
B = [B0;B1;B2;B3;B4];
f = b * B;
hold on
plot(b(1,:),b(2,:));
plot(f(1,:),f(2,:));
t = 1/2;
b1 = zeros(2,4) ; b2 = zeros(2,3) ; b3 = zeros(2,2) ; b4 = zeros(2,1);
for i = 1:4
    b1(:,i) = b(:,i)*(1-t) + b(:,i+1)*t;
end
for i = 1:3
    b2(:,i) = b1(:,i)*(1-t) + b1(:,i+1)*t;
end
for i = 1:2
    b3(:,i) = b2(:,i)*(1-t) + b2(:,i+1)*t;
end
b4(:,1) = b3(:,1)*(1-t) + b3(:,2)*t;
plot(b1(1,:),b1(2,:),'g*')

plot(b1(1,:),b1(2,:),'g-');
plot(b2(1,:),b2(2,:),'k*');
plot(b2(1,:),b2(2,:),'k-');
plot(b3(1,:),b3(2,:),'m-');
plot(b3(1,:),b3(2,:),'b*');
plot(b4(1,:),b4(2,:),'ro');
hold off