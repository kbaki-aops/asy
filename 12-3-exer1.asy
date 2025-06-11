import spgeo;

pair A,B,C,D;

path q = fourwinkle(101,103,79);

A = point(q, 0);
B = point(q, 1);
C = point(q, 2);
D = point(q, 3);

draw(q);
dot("$A$", A, SW);
dot("$B$", B, NW);
dot("$C$", C, NE);
dot("$D$", D, SE);
