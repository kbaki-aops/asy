import spgeo;

draw(unitcircle);

pair A,B,C,P;
P = N+2W;
A = N;
C = dir(307);
B = intersectionpoint(P--C, unitcircle);

pair D = A+E;

//markangle(2, P,A,B, radius=12, Fill(paleblue));
//markangle(2, A,C,P, radius=12, Fill(paleblue));
//draw(arc(O, 1, degrees(A), degrees(B)), blue+1);
markangle(2, C,B,A, radius=12, Fill(paleblue));
markangle(2, C,A,D, radius=12, Fill(paleblue));
draw(arc(O, 1, degrees(C)-360, degrees(A)), blue+1);
markangle(B,P,A, radius=15, Fill(palered), marker(markinterval(stickframe(1,5),true)));

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, E);
dot("$P$", P, W);

draw(A--P--C);
draw(B--A--C, dotted+1);
draw(A--D, dotted+1);
