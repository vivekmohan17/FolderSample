%% Question 1

M=101;
N=101;


x=[0:1/(M-1):1];
y=[0:1/(N-1):1];
[X,Y]=meshgrid(x,y);
z=X.^3+Y.^3;
figure(1)
surf(X,Y,z);
title('Plot of Z using surf')
xlabel('X');
ylabel('Y');
zlabel('Z');

figure (2)
ezsurf('X.^3+Y.^3',[0,1,0,1])
title('Plot of Z using ezsurf')
xlabel('X');
ylabel('Y');
zlabel('Z');

% mesh resolution cannot be controlled by ezsurf



%% Question 2

x=[-1:1/(M-1):1];
y=[-1:1/(N-1):1];
[X,Y]=meshgrid(x,y);
ki=X.*Y;

figure (3)
grid on;
[C,h] = contour(ki,5);
clabel(C,h)
title('Contour plot of \psi = xy')
xlabel('X');
ylabel('Y');



%% Question 3


x=[-1:10/(M-1):1];
y=[-1:10/(N-1):1];
u=x;
v=-y;
[X,Y]=meshgrid(x,y);
[U,V]=meshgrid(u,v);

%Plotting Vector Plot 

figure(4)
quiver(X,Y,U,V)
title('Velocity Vectors corresponding to \psi = xy')
xlabel('X');
ylabel('Y');
grid on

%Plotting Direction Plot

figure(5)
p=atan(V./U); 
surf(X,Y,p);
