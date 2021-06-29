%% Gráficas con variables simbólicas
clc; clear;
syms x y z

% Debo obtener la ecuacion en funcion de z de la forma: z= x^2 + (y^2)/9 + (z^2)/4

%Ecuacion simbolica (Superficies cuadricas)
disp('ECUACION SIMBOLICA(SUPERFICIES CUÁDRICAS):');
ec= x^2 + (y^2)/9 + (z^2)/4 ==10;
disp(ec);

z=solve(ec,z);
disp(z);

k=inline(z);
disp(k);

%Ecuacion simbolica 2
disp('ECUACION SIMBOLICA 2:');
z= 3*x^2 - 2*y + 5;
disp(z);
z=inline(z);
disp(z); 

%Ecuacion simbolica 3
disp('ECUACION SIMBOLICA 3:');
z= x^2 + y^2;
disp(z);
z=inline(z);
disp(z);


z(3,4) %Evaluando en un punto especifico
z(1,2)

a=1:10; %Evaluando en un vector
z(a,2)

%Ecuacion simbolica 4
clear; 
%clc;
syms x y z
disp('ECUACION SIMBOLICA 4:');
z= 3*x^2 - 2*y + 5;
z=inline(z);
disp(z);

a=-5:0.5:5;
z1=z(a,0);
plot(a,z1);

%
clear;
%clc;
syms x y z

[x, y]=meshgrid(-2:.2:2,-4:.4:4);
z= x.^2 + y.^2;
surf(z)