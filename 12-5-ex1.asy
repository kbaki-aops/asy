import spgeo;

draw(unitcircle);

pair P = N;
pair A = P+W;
pair B = P+E;
pair Q = dir(220);

draw(A--B);
draw(P--Q);

label("$\ell$", B, B-A);
label("$P$", P, P-Q);
label("$Q$", Q, Q-P);

