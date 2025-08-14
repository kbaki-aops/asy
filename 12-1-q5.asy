import spgeo;

unitsize(2cm);

draw(unitcircle);

pair A,B,C,D;
A = dir(120);
B = dir(42);
C = dir(238);
D = dir(degrees(A)+160);

markangle(B,D,A, radius=15, red);
markangle(B,C,A, radius=15, red);

dot("$A$", A, NW);
dot("$B$", B, NE);
dot("$C$", C, SW);
dot("$D$", D, SE);

draw(B--D--A--C--B);

label("$39^\circ$", D, 6dir(87.5), red);
label("$39^\circ$", C, 6dir(70), red);

draw(arc(O, 1, degrees(B), degrees(A)), blue+1);
label("$78^\circ$", B--A, 4dir(80), blue+1);
