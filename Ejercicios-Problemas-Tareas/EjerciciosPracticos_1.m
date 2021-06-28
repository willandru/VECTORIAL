clc;
syms x y z t;  %variables
syms p v; %vectores
syms a b c d; %Numeros Reales
%% Ecuation of a plane
disp('Ecuacion escalar de un plano')
plane=a*x+b*y+c*z==d;
display(plane)
normal_vector_plane=[a b c];
display(normal_vector_plane)
%% Ecuation of a line
disp('Ecuacion vectorial de una recta')
line= p + t.*v;
disp(line)