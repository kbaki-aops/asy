import spgeo;

unitsize(2cm);

pair A,B,C;
A = dir(135);
//B = O;
B = dir(240);
//B = 7/8*dir(270);
//B = 9/8*dir(300);
C = dir(45);

draw(unitcircle);

markangle(C,B,A, radius=20);

draw(A--B--C);
dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, NE);
