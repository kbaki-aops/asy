import spgeo;

real s = 1/2;
real a = s*3;
real b = s*4;

real c = sqrt(a^2+b^2);
real r = 2/3;

pair P = O+c*E;
pair A = O+a*r*dir(degrees(asin(b/c)));
pair B = P+a*(1-r)*dir(180+degrees(asin(b/c)));

draw(circle(O, a*r));
draw(circle(P, a*(1-r)));
draw(A--B);

dot("$O$", O);
dot("$P$", P);
dot("$A$", A, NE);
dot("$B$", B, SW);

write(a*r, a*(1-r), length(P-O), length(B-A));
