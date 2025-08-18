import spgeo;

pair P = dir(120);
pair A = P+4/4*dir(degrees(P)+90);
pair B = P+4/4*dir(degrees(P)-90);

draw(unitcircle);
draw(A--B);
draw(O--P);
//markrightangle(B,P,O, 8);

dot("$O$", O, unit(-P));
label("$P$", P, unit(P));
label("$A$", A, unit(A-B));
label("$B$", B, unit(B-A));
