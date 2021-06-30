%% Tarea 5: DERIVADAS PARCIALES/ DIFERENCIABILIDAD/ REGLA DE LA CADENA/ PLANOS TANGENTES
%% 6. La energía cinética de un cuerpo con masa m y velocidad v es K=1/2 m v². Muestre que (derivada parcial de K con respecto a m)(segunda derivada aprcial de K respecto a v)= K
clc; clear;
syms m v K

K=(1/2)*m*v^2;
K=inline(K);