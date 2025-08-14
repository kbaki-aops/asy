import spgeo;

draw(unitcircle);

pair A, B, C, D, P, Q;
A = dir(149-90);
B = dir(243-90);
C = dir(283-90);
D = dir(13-90);
P = extension(A, B, D, C);
Q = intersectionpoint(A--C, B--D);

dot("$A$", A, NE);
dot("$B$", B, NW);
dot("$C$", C, SW);
dot("$D$", D, SE);
dot("$P$", P, S);

draw(A--P--D);
