import spgeo;

unitsize(2cm);

draw(unitcircle);

pair A,B,C,D;
A = dir(120);
B = dir(42);
C = dir(238);
D = dir(degrees(A)+160);

dot("$A$", A, NW);
dot("$B$", B, NE);
dot("$C$", C, SW);
dot("$D$", D, SE);

draw(A--C--D--B--A--D);
label("$39^\circ$", D, 7dir(87.5));
label("$101^\circ$", C, NE);
label("$?$", A, 3dir(-37.5));
