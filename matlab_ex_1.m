%draw surface
syms x y
a(x,y)=x-x^2/2+x*y^2;
b(x,y)=y-y^2/2+y*x^2;
c(x,y)=x^3-y^3;
fsurf(a,b,c,[-10 10])
hold on;
%point on surface where x=2,y=3
x0=2; y0=3;
p=[a(x0,y0),b(x0,y0),c(x0,y0)];
plot3(p(1),p(2),p(3),'r.','MarkerSize',25)
%with corresponding isocurves
%isocurve1 when x is stationary and y0 runts thru its range
ua(x)=a(x,y0);
ub(x)=b(x,y0);
uc(x)=c(x,y0);
fplot3(ua,ub,uc,[-10 10],'b->','LineWidth',2)

%isocurve2 when y is stationary and x0 runts thru its range
va(y)=a(x0,y);
vb(y)=b(x0,y);
vc(y)=c(x0,y);
fplot3(va,vb,vc,[-10 10],'g->','LineWidth',2)
%drawing normal vector at P
%we need tangent vectors first
%tangent vector at x
uad=diff(ua,x);
ubd=diff(ub,x);
ucd=diff(uc,x);
uz=[uad(x0),ubd(x0),ucd(x0)];
quiver3(p(1),p(2),p(3),uz(1),uz(2),uz(3))
%tangent vector at y
vad=diff(va,y);
vbd=diff(vb,y);
vcd=diff(vc,y);
vz=[vad(y0),vbd(y0),vcd(y0)];
quiver3(p(1),p(2),p(3),vz(1),vz(2),vz(3))
%now we can calculate normal vector
normvec=cross(uz,vz);
quiver3(p(1),p(2),p(3),normvec(1),normvec(2),normvec(3),'k',linewidth=2)
%k=black
%%thats all guys, hope to see you in next one!! 



