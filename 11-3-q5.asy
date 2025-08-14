import spgeo;

draw(unitcircle);

pair A = dir(30);
pair B = dir(150);
pair M = intersectionpoint(O--N, A--B);

draw(A--B);

draw("$1$", M--O);
draw("$2$", O--A);

draw(rightanglemark(A,M,O, 4));

label("$A$", A, A);
label("$B$", B, B);
dot("$O$", O, S);
