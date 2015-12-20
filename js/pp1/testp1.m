x = [0:0.1:5];
x2= [0,5];
ci1=[1];ci2=[1,2];ci3=[1,3,4];
xi1=[0];xi2=[0,1];xi3=0:2;
y1=eval_newton_poly(ci1,xi1,x);
y2=eval_newton_poly(ci2,xi2,x);
y3=eval_newton_poly(ci3,xi3,x);
p1=@(x) 1;
p2=@(x) 2*x+1;
p3=@(x) 4*x*2-x+1;
[a1,b1] = fplot(p1, x2);
[a2,b2] = fplot(p2, x2);
[a3,b3] = fplot(p3, x2);

subplot (3, 1, 1)
plot(x,y1,a1,b1)
subplot (3, 1, 2)
plot(x,y2,a2,b2)
subplot (3, 1, 3)
plot(x,y3,a3,b3)