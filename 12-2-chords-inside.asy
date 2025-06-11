import spgeo;

unitsize(2cm);

draw(unitcircle);

pair A,B,C,D,P;
A = dir(119);
B = dir(203);
C = dir(323);
D = dir(43);
P = intersectionpoint(A--C, B--D);

draw(arc(O, 1, degrees(D), degrees(A)), blue+1);
draw(arc(O, 1, degrees(B), degrees(C)), red+1);

markangle(D,B,A, radius=15, Fill(paleblue));
markangle(D,C,A, radius=15, Fill(paleblue));
markangle(B,A,C, radius=15, Fill(palered));
markangle(B,D,C, radius=15, Fill(palered));

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NE);
dot("$P$", P, 1.5dir(255));

draw(A--B--D--C--cycle);
