import spgeo;

pair O, A,B,C, D,F,G,H;

draw(unitcircle);

A = N+E;
C = W+2S;
B = W+N;
D = N;
F = W;
G = intersectionpoints(A--C, unitcircle)[0];
H = intersectionpoints(A--C, unitcircle)[1];

draw(A--B--C--cycle);

dot("$A$", A, E);
dot("$B$", B, NW);
dot("$C$", C, S);
dot("$D$", D, N);
dot("$F$", F, E);
dot("$G$", G, E);
dot("$H$", H, S);

draw(rightanglemark(A,B,C, 4));

label(A--D);
