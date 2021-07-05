clc; clear;
%% Parametric Curves
%The right circular helix of radius 1: r(t)=(cos t, sin t, t), t pertenece
%a R.   A three-dimensional astroid: r(t)= (cos^3 t, sin^3 t, cos 2t), t
%pertenece a 0<= t <= 2pi. The cycloid is r(t)=(t-sin t, 1-cos t) t
%perteneec  R.
%% HELIX 
syms t;
helix=[cos(t) sin(t) t];
disp('Ecuacion de la helice:')
disp(helix);
helx_plot= fplot3(helix(1),helix(2),helix(3), [-10*pi, 10*pi]);
view([1 1 1]);
%% Creamos funciones: realdot and vectorlength
% Accordingly, the MATLAB command dot takes the complex conjugate of 
%its first argument before multiplying corresponding entries of the vectors and sum-
%ming. For numerical vectors with real entries, this has no effect at all. But when
%the vectors are real-valued symbolic expressions, this has the effect of introducing
%the command conj in ways that sometimes cause trouble. Similarly, norm when
%applied to symbolic vectors introduces the command abs in places where we do not
%want it. That is the reason for our defining realdot and vectorlength here to
%replace dot and norm in the calculations in this chapter.

realdot= @(x,y) x*transpose(y);
vectorlength= @(x) sqrt(simplify(realdot(x,x)));

velHelix= diff(helix, t);
disp('Vector Velocidad de la Helix:');
disp(velHelix);
speedHelix= vectorlength(velHelix);
disp('Rapidez de la Helix:');
disp(speedHelix);
acelHelix=diff(velHelix, t);
disp('Vector Aceleracion de la Helix:');
disp(acelHelix);

%% Reparametrizando por longitud de arco S(t)
syms s
disp('REPARAMETRIZANDO POR LONGITUD DE CURVA:');
arcHelix= subs(helix, t, s/sqrt(2)); %subs(s, old, new)  returns a copy of s, replacing all occurrences of old with new, and then evaluates s.
disp('Reparametrización:');
disp(arcHelix);
newspeed = vectorlength(diff(arcHelix,s));
disp('Rapidez es siempre 1:');
disp(newspeed);

%% Frenet Frame TBN vectors
% T es un vector unitario ytangente a la trayectoria es decir es es
% r'(t)/|r(t)|; N es un vector normal a T es decir es T'(t)/|T'(t)|. Por
% ultimo el vector B es ortogonal a ambos, es decir B= TxN.

%Computing the TBN of the Helix curve using its reparametrization by arc
%length

%Definimos una funcion para calcular vecotres unitarios

unitvector= @(x) simplify(x/vectorlength(x));

UT=diff(arcHelix, s);
UN= unitvector(diff(UT,s));
UB= simplify(cross(UT,UN));
disp('El vector T:');
disp(UT);
disp('El vector N:');
disp(UN);
disp('El vector B:');
disp(UB);

curveframeplot(helix,'t',0, 4*pi,4,.6), view([410.3 69.4])
xticks(''); yticks(''); zticks('');

%% CURVATURA Y TORSION