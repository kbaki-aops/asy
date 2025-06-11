import spgeo;

unitsize(2cm);

draw(unitcircle);

pair A, B, C, D, P, Q;
A = dir(149);
B = dir(243);
C = dir(283);
D = dir(13);
P = extension(A, B, D, C);
Q = intersectionpoint(A--C, B--D);

draw(arc(O, 1, degrees(D), degrees(A)), blue+1);
draw(arc(O, 1, degrees(B), degrees(C)), red+1);

markangle(D,B,A, radius=15, Fill(paleblue));
//markangle(D,C,A, radius=15, Fill(paleblue));
//markangle(B,A,C, radius=15, Fill(palered));
markangle(B,D,C, radius=15, Fill(palered));

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NE);
dot("$P$", P, S);
dot("$Q$", Q, 1.5dir(75));

draw(A--B--D--C--cycle);
draw(A--P--D);
