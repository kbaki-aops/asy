import spgeo;

draw(unitcircle);

pair A,B,C,D;
A = dir(120);
C = dir(60);
D = C+E/2;
B = midpoint(A--C);

draw(A+W--C+E);
label("$\ell$", C+E, E);

dot("$O$", O, SE);
dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, NE);
dot("$D$", D, N);
//draw(O--A);
draw(O--C);
draw(O--B, dotted+1);
draw(rightanglemark(O,B,C, 4));
