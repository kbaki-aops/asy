import spgeo;

real a = 6;
real b = 7;
real c = 5;
real sf = 1/min(new real[] {a,b,c});

pair A = sf*origin;
pair B = sf*(A+c*dir(degrees(acos((a^2+b^2-c^2)/(2a*b)))));
pair C = sf*(A+b*E);

guide wheel = incircle(A, B, C);

draw(A--B--C--cycle);
draw(wheel);

pair O = center(wheel);
real r = radius(wheel);
pair P = tangent(C, O, r);

dot("$P$", P, dir(P-O));
label("$A$", A, dir(A-O));
label("$B$", B, dir(B-O));
label("$C$", C, dir(C-O));

pair Q = tangent(B, O, r);
pair R = tangent(A, O, r);

label("$x$", Q--A);
label("$x$", A--R);
label("$y$", P--B);
label("$y$", B--Q);
label("$z$", R--C);
label("$z$", C--P);
