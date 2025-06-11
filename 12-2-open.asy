import spgeo;

unitsize(2cm);

draw(unitcircle);

pair A,B,C,D,P;
A = dir(119);
B = dir(203);
C = dir(323);
D = dir(43);
P = intersectionpoint(A--C, B--D);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NE);
dot("$P$", P, 1.5dir(255));

draw(A--B--D--C--cycle);
