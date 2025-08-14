import spgeo;

draw(unitcircle);

pair A,B,C,D,P;
A = dir(41);
B = dir(229);
C = dir(149);
D = dir(307);
P = extension(A, B, C, D);

//draw(arc(O, 1, degrees(B), degrees(D)), blue+1);
//markangle(2, B,C,D, radius=12, Fill(paleblue));
//markangle(2, B,A,D, radius=12, Fill(paleblue));
//markangle(D,P,A, radius=12, Fill(palered), marker(markinterval(stickframe(1,5),true)));
//markangle(C,P,B, radius=12, Fill(palered), marker(markinterval(stickframe(1,5),true)));

dot("$A$", A, NE);
dot("$B$", B, SW);
dot("$C$", C, NW);
dot("$D$", D, SE);
dot("$P$", P, 2S);

draw(A--B);
draw(C--D);

//draw(A--D);
//draw(C--B);
