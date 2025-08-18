import spgeo;

pair P = dir(120);
pair A = P+4/4*dir(degrees(P)+90);
pair B = P+4/4*dir(degrees(P)-90);
pair Q = dir(20);

draw(P--Q, color1);
draw(unitcircle);
draw(A--B);

dot("$O$", O, SE);
label("$\ell$", B, unit(B-A));
label("$P$", P, unit(P-Q));
label("$Q$", Q, unit(Q-P), color1);
