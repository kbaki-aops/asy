import spgeo;

draw(unitcircle);

pair A = dir(233);
pair B = dir(87);
pair C = dir(321);
pair D = dir(175);
pair F = dir(24);
pair P = intersectionpoint(A--B, D--F);
pair Q = intersectionpoint(B--C, D--F);

draw(A--B--C);
draw(D--F);

dot("$A$", A, SW);
dot("$B$", B, N);
dot("$C$", C, SE);
dot("$D$", D, W);
dot("$F$", F);
dot("$P$", P, 2dir(225));
dot("$Q$", Q, 2dir(330));

label("$4$", A--P);
label("$5$", Q--C);
label("$3$", P--D);
label("$2$", P--Q);
label("$2$", F--Q);
