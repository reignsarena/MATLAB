syms x y
%%1
f(x,y)=sqrt(1-x^2-3*y^2);
fsurf(f,'b');
axis equal; hold on;
px=0.1; py=0.3;
pz=f(px,py);
plot3(px,py,pz,'r.',MarkerSize=25)
%%
%2
f(x,y)=3^sqrt(x^2-3*y^2+5);
fsurf(f,'g');
hold on;
px=0.1; py=0.3;
pz=f(px,py);
plot3(px,py,pz,'r.',MarkerSize=25)
%that was it for today's video, thanks for watching!
