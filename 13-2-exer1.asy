import spgeo;

draw(unitcircle);

pair O,P,A,B,C;

P = N+2E;
A = N;
B = intersectionpoint(P--O, unitcircle);
C = dir(degrees(B)+180);

//draw(rightanglemark(O,A,P, 4));
//draw(rightanglemark(O,B,P, 4));

//draw(O--P, blue+1);
//draw(O--A, red+1, StickIntervalMarker(1,1, red));
//draw(O--B, red+1, StickIntervalMarker(1,1, red));

//dot("$O$", O, SE);
dot("$P$", P, E);
dot("$A$", A, N);
dot("$B$", B, dir(-30));
dot("$C$", C, SW);

draw(A--P--C);
