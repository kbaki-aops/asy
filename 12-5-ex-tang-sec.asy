import spgeo;

draw(unitcircle);

pair P = dir(120);
pair Q = dir(252);

pair A = P+4/3*dir(degrees(P)+90);
pair B = P-3/4*dir(degrees(P)+90);

draw(A--B);
draw(B--Q);
//draw(P--Q);

markangle(P,B,Q, radius=8);
//markangle(Q,P,B, radius=8);

label("$P$", P, P-Q);
label("$A$", A, A-P);
label("$B$", B, B-P);
label("$Q$", Q, Q-P);
//labelarc(P, Q);
//label("$\ell$", A, A-P);
