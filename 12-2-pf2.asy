import spgeo;

draw(unitcircle);

pair B = dir(55);
pair A = dir(-55);
pair C = dir(150);
pair D = dir(260);
pair P = intersectionpoint(A--C, B--D);

draw(A--C);
draw(B--D);
draw(B--C);

label("$A$", A, A);
label("$B$", B, B);
label("$C$", C, C);
label("$D$", D, D);
label("$P$", P, 2dir(275));

//labelarc(A, B, "$x$");
//labelarc(C, D, "$y$");

label("$\frac{\arc AB}2$", C, 2dir(340));
label("$\frac{\arc CD}2$", B, 3dir(225));
