%write the points
px=[10,20,40,50,20];
py=[20,40,40,20,10];
%draw the control points
plot(px,py,'b.','MarkerSize',25)
axis equal; hold on;
plot(px,py,'r--')
axis equal; hold on;
syms t
t1=0; t2=1;
%degree
n=4;
%set the parametric equations x(t) & y(t) to zero
x(t)=0*t; y(t)=0*t;
for i=0:n
    %Bernstien Polynomial
    weight=nchoosek(n,i)*t^i*(1-t)^(n-i);
    %summing the properly weighted control points
    x(t)=x(t)+px(1+i)*weight;
    y(t)=y(t)+py(1+i)*weight;
end
%draw the curve
fplot(x(t),y(t),[t1 t2],'g',LineWidth=2)
hold on;
%drawing vector at beginning
v1x=n*(px(1)-px(2));
v1y=n*(py(1)-py(2));
quiver(px(1),py(1),v1x,v1y,'k')
hold on;
%drawing vector at end
v2x=n*(px(5)-px(4));
v2y=n*(py(5)-py(4));
quiver(px(5),py(5),v2x,v2y,'c')
hold off;
%thanks for watching!!
%Link in Description!!