import spgeo;

draw(unitcircle);

pair A,B,C,P;

P = N+1.5W;
A = N;
B = dir(195);
C = S;


draw(arc(O, 1, degrees(A), degrees(B)), blue+1);
draw(arc(O, 1, degrees(B), degrees(C)), red+1);
markangle(B,A,C, radius=15, Fill(palered));

dot("$O$", O, SE);
dot("$P$", P, W);
dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, S);

draw(P--A--B);
draw(A--C, dotted+1);
