%script37 for Lab3
clear all
a = 0;
b = 10;
N = 100;
kr = 10;
z = rand(1,N);
xr = gen37(z);
figure(1);
hist(xr,kr);
title('f(x)=0.1');
[v, xv] = hist(xr,kr);
%критерий хи2
sh = (b - a) /kr;
xx = a:sh:b;
yy = Fx7(xx);
pr(1:kr) = 0;
for k = 1:kr
    pr(k) = yy(k+1)-yy(k);
end
Npr = N*pr;
er = v - Npr;
er2 = er.^2./Npr;
x2 = sum(er2)
%w2
xrs = sort(xr);
fxrs = Fx7(xrs);
k1 = 1:N;
k5 = (k1 - 0.5)/N;
err = fxrs - k5;
err2 = err.*err;
w2 = sum(err2) + 1/12*N