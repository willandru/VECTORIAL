% Este es un archivo .m que intenta graficar una curva en el espacio junto
% con sus vectores TBN, representado por el normal en rojo y el binormal en
% verde. El parametro num determina el numero de esquemas TBN graficados;
% El parametro len determina la longitud de los vectores TBN

function z = curveframeplot(curve, parameter, start, fin, num, len)

newcurve= subs(curve, parameter, 't');
t= linspace(start, fin);
x=eval(vectorize(newcurve(1)));
y=eval(vectorize(newcurve(2)));
w=eval(vectorize(newcurve(3)));
plot3(x,y,w, 'm', 'LineWidth',2)
hold on; 

unit_vec= @(u) u/sqrt(u*transpose(u));
curve_vel=diff(curve);
curve_tan=unit_vec(curve_vel);
curve_norm=unit_vec(diff(curve_vel));
curve_bin=cross(curve_tan, curve_norm);

t1=start:(fin-start)/num:fin;
newcurve1=subs(curve,parameter,'t1');
norm1=subs(curve_norm,parameter,'t1');
bin1=subs(curve_bin,parameter,'t1');
tan1=subs(curve_tan,parameter,'t1');
x1 = eval(vectorize(newcurve1(1)));
y1 = eval(vectorize(newcurve1(2)));
w1 =eval(vectorize(newcurve1(3)));
xnorm = eval(vectorize(newcurve1(1)+len*norm1(1)));
ynorm = eval(vectorize(newcurve1(2)+len*norm1(2)));
wnorm=eval(vectorize(newcurve1(3)+len*norm1(3)));
xbin = eval(vectorize(newcurve1(1)+len*bin1(1)));
ybin = eval(vectorize(newcurve1(2)+len*bin1(2)));
wbin =eval(vectorize(newcurve1(3)+len*bin1(3)));
xtan = eval(vectorize(newcurve1(1)+len*tan1(1)));
ytan = eval(vectorize(newcurve1(2)+len*tan1(2)));
wtan =eval(vectorize(newcurve1(3)+len*tan1(3)));

for n=1:length(t1)
   plot3([x1(n),xtan(n)],[y1(n),ytan(n)],[w1(n),wtan(n)],'k', 'LineWidth', 1.5)
   plot3([x1(n),xnorm(n)],[y1(n),ynorm(n)],[w1(n),wnorm(n)],'red', 'LineWidth', 1.5)
   plot3([x1(n),xbin(n)],[y1(n),ybin(n)],[w1(n),wbin(n)],'green', 'LineWidth', 1.5)
end
hold off, axis equal