import spgeo;

draw(unitcircle);

pair P,A,B;

P = 2W;
A = tangent(P, O, 1);
B = tangent(P, O, 1, 2);

//draw(rightanglemark(O,A,P, 4));
//draw(rightanglemark(O,B,P, 4));

draw(A--P--B);
//draw(O--P, blue+1);
//draw(O--A, red+1, StickIntervalMarker(1,1, red));
//draw(O--B, red+1, StickIntervalMarker(1,1, red));

dot("$P$", P, W);
dot("$A$", A, S);
dot("$B$", B, N);
