import spgeo;

draw(unitcircle);

pair A = dir(135);
pair B = dir(15);
pair C = dir(225);
pair D = dir(-15);
pair P = extension(A, B, C, D);
pair Q = intersectionpoint(A--D, B--C);

label("$A$", A, A);
label("$B$", B, NE);
label("$C$", C, C);
label("$D$", D, SE);
label("$P$", P, E);
label("$Q$", Q, S);

draw(A--P--C);
draw(D--A--C--B);

label("$90^\circ$", W, W);
label("$60^\circ$", A, 4dir(-60));
label("$60^\circ$", C, 4dir(60));
label("$60^\circ$", Q, 2W);

labelarc(D, B, "$30^\circ$");
