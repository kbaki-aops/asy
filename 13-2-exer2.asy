import spgeo;

draw(unitcircle);

real c1 = 1;
real c2 = 3;
real c = c1+c2+c1;
real m = sqrt(c1*(c1+c2));
real l = sqrt(c^2/2)-m;

pair A = E+m/l*N;
pair B = E+S;
pair C = m/l*W+S;

dot("$A$", A, NE);
dot("$B$", B, SE);
dot("$C$", C, SW);
dot("$O$", O, SE);

label("$1$", A, 4.5dir(205));
label("$1$", C, 4.5dir(65));
label("$3$", O, 4.5dir(135));

draw(A--B--C--cycle);
draw(rightanglemark(A,B,C, 6));
