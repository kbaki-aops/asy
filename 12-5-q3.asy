import spgeo;

real angle = 128;
pair A = dir(180-angle/2);
pair B = dir(180+angle/2);
pair C = E;
pair P = W/Cos(angle/2);
pair X = dir(degrees(A)+10);
pair Y = dir(degrees(A)-10);

draw(unitcircle);
draw(A--P--B);
label("$A$", A, A);
label("$B$", B, B);
label("$P$", P, unit(P));
dot("$C$", E, E);
labelarc(A, B);

//iter=1
//dot("$O$", O, E);
//draw(A--O--B);
//markrightangle(P,A,O);
//markrightangle(O,B,P);

//iter=2
//labelangle(B,P,A);

//iter=3
//draw(A+2*(A-P)--A--P--B--B+2*(B-P));
//dot("$A$", A, A);
//dot("$B$", B, B);
//dot("$O$", O, E);
//draw(A--O--B, dotted);

//iter=4
//dot("$C$", E, W);
