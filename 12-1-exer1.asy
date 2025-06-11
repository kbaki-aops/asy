import spgeo;

unitsize(2cm);

draw(unitcircle);

pair A,B,C,D;
A = dir(120);
B = dir(42);
C = dir(238);
D = dir(degrees(A)+180);

dot("$A$", A, NW);
dot("$B$", B, NE);
dot("$C$", C, SW);
dot("$D$", D, SE);

draw(A--C--D--B--A--D);
draw(rightanglemark(A,C,D));
markangle(B,D,A, radius=15);
label("$39^\circ$", D, 7dir(97.5));
label("$?$", A, 4dir(-33.75));
