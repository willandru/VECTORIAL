clc; clear;
disp('CAPITULO 2: VECTORES Y GRÁFICAS');
%% VECTORS
%% Vectores. Operaciones ásicas
a= [1, 2, 3];
    disp('a:');
    disp(a);
b=[-5 -3 -1];
    disp('b:');
    disp(b);
c=[3 0 -2];
    disp('c:');
    disp(c);
disp('a+b:');
    disp(a+b);
disp('5*c:');
    disp(5*c);
%Producto punto
disp('Producto Punto:');
dot1=dot(a,b);
    disp(dot1);
%Longitud de un vector (norma)
disp('Norma vector a:');
norma=norm(a);
    disp(norma);
disp('Norma de a, b, c:');
    disp([norm(a) norm(b) norm(c)]);
%% Vectores. Espacio
%Convertir un vector del plano a un vector en el espaacio agregue 0 al
%final
disp('CONVERTIR Vector del plano al espacio:');
syms x y;
p1=[x y];
    disp('Vector en plano:');
    disp(p1);
s1=[p1 0];
    disp('Vector en el espacio:');
    disp(s1);
%Del espacio a el plano
disp('CONVERTIR Vector En el espacio a el plano:');
syms x y z
s2=[x y z];
    disp('Vector en espacio:');
    disp(s2);
p2=s2(1:2);
    disp('Vector en el plano:');
    disp(p2);
%Producto Cruz
disp('Producto Cuz a x b:');
cruz1=cross(a,b);
    disp(cruz1);
%Producto Cruz
disp('Producto Cuz s1 x s2:');
cruz2=cross(s1,s2);
    disp(cruz2);
%% APPLICATION OF VECTORS
disp('APLICATION  OF VECTORS:')
%% Angle between two vectors using dot(a,b)= |a||b|cos(phi)
disp('Angle between VECTORS:');
phi= acos(dot(a,b)/(norm(a)*norm(b)));
disp('Angle a, b in radians: ');
disp(phi);
%From Radians to Degrees
deg=phi*180/pi;
disp('Angle in degrees: ');
disp(deg);
%% Projection of a over b:
projection= (dot(a,b)/dot(b,b))*b;
disp('Proyeccion de a sobre b:');
    disp(projection);
%% Volume of Parallelepiped
volPa=abs(dot(a, cross(b,c)));
disp('Volume of parallelepiped: ');
disp(volPa);

%% Area of Parallelepiped
AreaPa=norm(cross(a,c));
disp('Area of parallelepiped: ');
disp(AreaPa);

%% PARAMETRIC CURVES
%% Consider de parametrized unit circle x=cos(t), y=sen(t), 0<=t>=2pi
%Draw numeric equation:
figure(1)
T=0:0.1:2*pi;
plot(cos(T),sin(T)); axis square
%Draw symbolic equation:
figure(2)
syms t
fplot(cos(t), sin(t),[0,2*pi]); axis square
%% Spiral plane curves
figure(3)
fplot(exp(-t/10)*(1+cos(t)), exp(-t/10)*sin(t),[0,2*pi]); 
%Draw a larger portion of the curve
figure(4)
fplot(exp(-t/10)*(1+cos(t)), exp(-t/10)*sin(t),[0,20*pi]); 

%% CURVA EN EL ESPACIO CON ECUACIONES PARAMETRICAS
% Viviani's curve defined as the intersection of the sphere x^2+y^2+z^2=4
% with the cylinder (x-1)^2 + y^2 =1. The projection of the curve into the 
%x-y plane is defined by the same equation that defines the cylinder thus, 
%it is a circle that has been shifted away from the origin. We can
%parametrize this circle in the plane by taking
syms t 
x=1+cos(t);   y= sin(t);
%using this parametrization to solve the sphere's equation for z we get z
z=2*sin(t/2);
figure
%fplot3(x, y, z, [0 pi]);(’’
hold on
fplot3(sym(0), 2*cos(t/2), 2*sin(t/2), [0, pi])
fplot3(2*cos(t/2), sym(0), 2*sin(t/2), [0, pi])
fplot3(2*cos(t/2), 2*sin(t/2), sym(0), [0 pi])
fplot3(1+cos(t), sin(t), sym(0), [0, pi])
fplot3(sym(0), sym(0), t, [0 2]);
fplot3(sym(0), t, sym(0), [0 2]);
fplot3(t, sym(0), sym(0), [0 2])
title(''); xlabel(''); ylabel(''); zlabel('');
view([10, 3, 1]);
grid off; axis off;

close;close;close;close;close;close;close;
%% GRAFICANDO SUPERFICIES
clc; clear;
syms x y Hemisphere with
figure;
fmesh(1-x^2 - y^2,[-1,1,-1,1]);
hold on;
fsurf(sin(6*x*y), [-1, 1, -1, 1])
title('Interception Surfaces'); hold off;

figure
fsurf(sqrt(1-x^2 -y^2)*heaviside(1-x^2-y^2), [-1, 1, -1, 1]);
title('Smooth Edges');view([1, 1, 1]); xlabel(''); ylabel(''); zlabel('');
grid off; axis off; axis equal;

%% SUPERFICIES PARAMÉTRICAS
clc; clear;
% Graficar superficies definidas por variables intermedias parametrizadas por 2
% varibales (x,y,z)=(u^3,v^3, uv)
syms u v
figure
fsurf(u^3, v^3, u*v,[-1,1,-1,1]);
view([1, 1, 1]), title('SUPERFICIES PARAMÉTRICAS'); xlabel(''); ylabel(''); zlabel('')
grid off; axis off;