import spgeo;

draw(unitcircle);

pair A,B,C;
A = 1.5W;
B = 1.2E+N;
C = 1.2E+S;
draw(B--A--C);
draw(B--C, dotted+1);

dot("$A$", A, W);
dot("$B$", B, NE);
dot("$C$", C, SE);
dot("$O$", O, E);

label("$20^\circ$", W, E);
label("$100^\circ$", E, W);
