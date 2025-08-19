import "/Users/klausbaki/asy/spgeo.asy" as spgeo;


pair A = dir(150);
pair B = dir(30);
pair P = midpoint(A--B);
pair C = intersectionpoint(P--P+2dir(120), unitcircle);
pair D = intersectionpoint(P--P+2dir(300), unitcircle);

draw(unitcircle);
draw(A--B);
draw(C--D);

label("$A$", A, W);
label("$B$", B, E);
label("$C$", C, N);
label("$D$", D, SE);
label("$P$", P, dir(240));
//dot("$O$", O, S);

label("$3$", P--C);
label("$8$", D--P);
