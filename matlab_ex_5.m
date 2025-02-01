%write the coordinates
px=[-2,4,6,10];
py=[-2,0,-2,2];
plot(px,py,'b.','MarkerSize',25)
axis equal; hold on;
t1=-1; t2=0; t3=2; t4=3;
syms a3 a2 a1 a0 b3 b2 b1 b0 t
%degree 3rd x and y equations
x(t)=a3*t^3+a2*t^2+a1*t+a0;
y(t)=b3*t^3+b2*t^2+b1*t+b0;
%evalute equation x(t)
ex=[x(t1)==px(1)
    x(t2)==px(2)
    x(t3)==px(3)
    x(t4)==px(4)
    ];
s=solve(ex,[a3 a2 a1 a0]);
hx=subs(x,[a3 a2 a1 a0],[s.a3 s.a2 s.a1 s.a0]);
%evalute equation y(t)
ey=[y(t1)==py(1)
    y(t2)==py(2)
    y(t3)==py(3)
    y(t4)==py(4)
    ];
s=solve(ey,[b3 b2 b1 b0]);
hy=subs(y,[b3 b2 b1 b0],[s.b3 s.b2 s.b1 s.b0]);
%draw the polynomial curve
fplot(hx,hy,[t1 t4])
%when t=2
dx=diff(hx,t);
dy=diff(hy,t);
%tangent vector at t3=2
quiver(hx(t3),hy(t3),dx(t3),dy(t3),'k')

