import spgeo;

draw(unitcircle);

pair P,Q,A,B,C,D;
P = 2W;
A = dir(120);
B = dir(160);
C = dir(200);
D = dir(240);
Q = intersectionpoint(A--C, B--D);

dot("$O$", O, SE);
dot("$P$", P, W);
dot("$Q$", Q, E);
dot("$A$", A, NW);
dot("$B$", B, NE);
dot("$C$", C, SE);
dot("$D$", D, SW);

draw(A--P--D);
draw(B--P--C);
draw(A--C, dotted+1);
draw(B--D, dotted+1);

write(degrees(A-Q));
