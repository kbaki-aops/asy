import spgeo;

draw(unitcircle);

pair A = randdir(1);
pair B = randdir(2);
pair C = randdir(3);
pair D = randdir(4);
pair P = intersectionpoint(A--C, B--D);

draw(A--C--B--D--cycle);

label("$A$", A, A);
label("$B$", B, B);
label("$C$", C, C);
label("$D$", D, D);
label("$P$", P, -2dir(mean(degrees(B-P), degrees(A-P))));

label("$"+(string)(int)(mean(-degrees(A), degrees(B)))+"^\circ$", C, 3dir(mean(degrees(A-C), degrees(B-C))));
label("$"+(string)(int)(degrees(B-P)-degrees(A-P))+"^\circ$", P, 3dir(mean(degrees(B-P), degrees(A-P))));
label("$?$", A, 3dir(mean(degrees(C-A), degrees(D-A))));
