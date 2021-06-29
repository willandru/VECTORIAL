%% Pontificia UNiversidad Javeriana / Calculo Vectorial / Limites y Continuidad
%% Primer punto: Considere la funcion f(x,y,z)=xyz. ¿Tiene f un valor maximo sobre la recta con parametrizacion x=20-t, y=t, z=20?, Si lo tiene ¿cual es?

%visualizamos la recta
t=linspace(-100,100,200);
x=20-t;
y=t;
z=20.*ones(1,200);
plot3(x,y,z)
%visualizamos al superficie
%[x,y]=meshgrid(-50:.5:50, -50:.5:50);
%w= x*y*z;