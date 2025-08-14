import spgeo;

draw(unitcircle);

pair P,A,B;

P = 2W;
A = tangent(P, O, 1);
B = tangent(P, O, 1, 2);

draw(A--P--B);

dot("$O$", O, E);
dot("$P$", P, W);
dot("$A$", A, S);
dot("$B$", B, N);
label("$72^\circ$", P, 3E);
