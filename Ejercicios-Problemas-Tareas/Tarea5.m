%% Tarea 5: DERIVADAS PARCIALES/ DIFERENCIABILIDAD/ REGLA DE LA CADENA/ PLANOS TANGENTES
%% 6. La energía cinética de un cuerpo con masa m y velocidad v es K=1/2 m v². Muestre que (derivada parcial de K con respecto a m)(segunda derivada aprcial de K respecto a v)= K
clc; clear;
syms m v K

K=(1/2)*m*v^2;

Km=diff(K,m)
Kmm=diff(Km,m)  


%% 10.a) Verifique si cada una de las siguientes funciones es solucion de la ecuacion de Laplace Uxx + Uyy=0
%clc; clear;
syms u x y

u= exp(-x)*cos(y) - exp(-y)*cos(x);

%% 35.c) Asuma que todas las funciones dadas tienes derivadas de segundo orden continuas.
syms u x y s t
x= exp(s)*cos(t);
y=exp(s)*sin(t);

%% 39-b) Verifique la aproximacion lineal en (0, 0).
%clc; clear;

syms z x y

z= sqrt(y*(cos(x))^2)==1+y/2;

%% 43) Encuentre un punto sobre la elipsoide x^2 + 4y^2 + z^2 = 9 donde el plano tangente es perpendicular es perpendicular a la recta con ecuaciones parametricas x = 2 − 4t, y = 1 + 8t y z = 3 − 2t.

syms x y z t

elipsoide= x^2 + 4*y^2 + z^2==9;

x=2-4*t;
y=1+8*t;
z=3-2*t;







