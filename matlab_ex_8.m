%write the points
px=[-2,6];
py=[-2,-2];
vx=[6,4];
vy=[-4,4];
plot(px,py,'b.',MarkerSize=25);
axis equal; hold on;
%parameter values
t1=0; t2=1;
%assign variables
syms a3 a2 a1 a0 b3 b2 b1 b0 t
%write 3rd degree polynomial equations x(t) & y(t)
x(t)=a3*t^3+a2*t^2+a1*t+a0;
y(t)=b3*t^3+b2*t^2+b1*t+b0;
%for vector v taking diff
dx=diff(x,t);
dy=diff(y,t);

%for eqaution x(t)
ex=[x(t1)==px(1)
    x(t2)==px(2)
    dx(t1)==vx(1)
    dx(t2)==vx(2)];
s=solve(ex,[a3 a2 a1 a0]);
hx=subs(x,[a3 a2 a1 a0],[s.a3 s.a2 s.a1 s.a0]);
%for eqaution y(t)
ey=[y(t1)==py(1)
    y(t2)==py(2)
    dy(t1)==vy(1)
    dy(t2)==vy(2)];
s=solve(ey,[b3 b2 b1 b0]);
hy=subs(y,[b3 b2 b1 b0],[s.b3 s.b2 s.b1 s.b0]);
%draw the arc
fplot(hx,hy,[t1 t2])
hold on;
%draw the vector v1
quiver(px(1),py(1),vx(1),vy(1),'k')
%draw the vector v2
quiver(px(2),py(2),vx(2),vy(2),'r')
