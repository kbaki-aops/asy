import spgeo;

draw(unitcircle);

pair A,B,C,D;
A = dir(90);
B = A+E/2;

draw(A+W--A+E);
label("$\ell$", A+E, E);

dot("$O$", O, SE);
dot("$A$", A, N);
dot("$B$", B, NE);

draw(O--A);
draw(rightanglemark(O,A,B, 4));
draw(O--B, dotted+1);
