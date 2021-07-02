clc; clear;

syms x y z a b c
elipsoide= (x.^2 /a^2)+(y.^2 /b^2)+(z.^2 /c^2)==1;












[x,y] =meshgrid(-200:.02:200);
z= x.^2 - 2*y.^2;
surf(x,y,z);
shading flat
title('Matlab surface')

g=x.^2 + y.^2==1;
