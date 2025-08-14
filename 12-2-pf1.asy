import spgeo;

usepackage("tipa");

draw(unitcircle);

pair B = dir(60);
pair P = 2W;
pair A = dir(-60);
pair D = intersectionpoint(P--A, unitcircle);
pair C = intersectionpoint(P--B, unitcircle);

draw(A--P--B);
draw(D--B);

label("$B$", B, B);
label("$A$", A, A);
label("$C$", C, NW);
label("$D$", D, SW);
label("$P$", P, P);

label("$\frac{\arc CD}2$", B, 12dir(215));
label("$\frac{\arc AB}2$", D, 3dir(10));

//labelarc(A, B, "$x$");
//labelarc(C, D, "$y$");
