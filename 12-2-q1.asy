import spgeo;

draw(unitcircle);

pair B = dir(82);
pair P = 2W;
pair A = dir(-70);
pair D = intersectionpoint(P--A, unitcircle);
pair C = intersectionpoint(P--B, unitcircle);

draw(A--P--B);
draw(D--B);

label("$B$", B, B);
label("$A$", A, A);
label("$C$", C, NW);
label("$D$", D, SW);
label("$P$", P, P);

labelarc(A, B);
labelarc(C, D);

label("$?$", B, 6dir(220));
label("$?$", D, 3dir(15));
