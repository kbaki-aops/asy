import spgeo;

draw(unitcircle);

pair P = N;
pair A = P+W;
pair B = P+E;
pair Q = dir(220);

draw(A--B);
draw(P--Q);

dot("$A$", A, A-B);
dot("$B$", B, B-A);
label("$P$", P, P-Q);
label("$Q$", Q, Q-P);
