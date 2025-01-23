%draw the surface
%%
syms x y
f(x,y)=sin(x)+cos(y)/x;
fsurf(f)
hold on;
%draw the intersection of surface
fimplicit(f,'r',LineWidth=2)
%%
%draw the plane
syms x y z
f(x,y,z)=x-y+2*z-5;
fimplicit3(f,'c')





