import spgeo;

draw(unitcircle);

pair A,B,C,D,P;
P = 2W;
B = dir(61);
D = dir(283);
A = intersectionpoint(P--B, unitcircle);
C = intersectionpoint(P--D, unitcircle);

//markangle(2, P,B,C, radius=12, Fill(paleblue));
//markangle(2, A,D,P, radius=12, Fill(paleblue));
//draw(arc(O, 1, degrees(A), degrees(C)), blue+1);
//markangle(D,P,B, radius=15, Fill(palered), marker(markinterval(stickframe(1,5),true)));

dot("$A$", A, NW);
dot("$B$", B, NE);
dot("$C$", C, SW);
dot("$D$", D, SE);
dot("$P$", P, W);

draw(B--P--D);
//draw(B--C, dotted+1);
//draw(A--D, dotted+1);
