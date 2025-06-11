import spgeo;

draw(unitcircle);

pair A,B,C,P;

P = N+2W;
A = N;
C = dir(300);
B = intersectionpoint(P--C, unitcircle);

markangle(P,A,B, radius=15, Fill(palered));
draw(arc(O, 1, degrees(A), degrees(B)), red+1);
markangle(C,B,A, radius=15, Fill(paleblue));
draw(arc(O, 1, degrees(C)-360, degrees(A)), blue+1);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$P$", P, W);

draw(A--P--C);
draw(B--A, dotted+1);
