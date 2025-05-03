clear;
figure;
p = [2.305 2.408 2.515 2.636 2.7525; 2.444 2.556 2.669 2.769 2.861];
a = 2.055;
e = 2.4;
c = 2.7;
d = 2.630;
n=max(size(p));
l=zeros(2,n-2);
for j=1:(n-2)
l(:,j) = p(:,j+2) - p(:,j);
end
ultim=3*(n-1)+1;
b= ones(2,ultim);
b(:,1) = p(:,1);
b(:,2) = [a;e];
b(:,3) = p(:,2)-(1/6)*l(:,1);
for k=1:(n-3)
b(:,3*k+1) = p(:,k+1);
b(:,3*k+2) = p(:,k+1) + (1/6) *l(:,k);
b(:,3*k+3) = p(:,k+2) - (1/6) *l(:,k+1);
end
b(:,3*(n-2)+1) = p(:,n-1);
b(:,3*(n-2)+2) = p(:,n-1) + (1/6) *l(:,n-2);
b(:,3*(n-2)+3) = [c,d];
b(:,ultim) = p(:,n);
i=1;
nr=1;
ng=floor(ultim/4)+1;
while nr<=ng
plot(b(1,i:i+3), b(2,i:i+3),'kx-');
hold on;
nr=nr+1;
i=i+3;
end
t=0:.001:1; %parametrul
B0=(1-t).^3;
B1=3.*(1-t).^2.*t;
B2=3.*(1-t).*t.^2;
B3=t.^3;
B=[B0;B1;B2;B3];
m=length(t);
x=zeros(2,m);
i=1;
nr=1;
while nr<=ng
x=b(:,i:i+3)*B;
plot(x(1,:),x(2,:),'LineWidth',1.3);
nr=nr+1;
i=i+3;
end
for k=l:ng
end
hold off
title('Interpolarea F-mill');