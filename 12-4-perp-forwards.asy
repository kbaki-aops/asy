import spgeo;

draw(unitcircle);

pair A,B,C,D;
A = dir(120);
D = dir(60);
C = D+E/2;
B = midpoint(A--D);

draw(A+W--D+E);
label("$\ell$", D+E, E);

dot("$O$", O, SE);
dot("$A$", A, NW);
dot("$B$", B, SW);
//dot("$D$", D, NE);
dot("$C$", C, N);
draw(O--A);
//draw(O--D);
draw(O--B, dotted+1);
draw(rightanglemark(O,B,D, 4));
